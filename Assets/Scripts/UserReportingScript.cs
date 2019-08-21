using System;
using System.Collections;
using System.Text;
using Unity.Cloud.UserReporting;
using Unity.Cloud.UserReporting.Plugin;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.EventSystems;
using UnityEngine.UI;

public class UserReportingScript : MonoBehaviour
{
	[Tooltip("The user report button used to create a user report.")]
	public Button UserReportButton;

	[Tooltip("The UI for the user report form. Shown after a user report is created.")]
	public Canvas UserReportForm;

	[Tooltip("The event raised when a user report is submitting.")]
	public UnityEvent UserReportSubmitting;

	[Tooltip("The category dropdown.")]
	public Dropdown CategoryDropdown;

	[Tooltip("The description input on the user report form.")]
	public InputField DescriptionInput;

	[Tooltip("The UI shown when there's an error.")]
	public Canvas ErrorPopup;

	private bool isCreatingUserReport;

	[Tooltip("A value indicating whether the hotkey is enabled (Left Alt + Left Shift + B).")]
	public bool IsHotkeyEnabled;

	[Tooltip("A value indicating whether the user report prefab is in silent mode. Silent mode does not show the user report form.")]
	public bool IsInSilentMode;

	[Tooltip("A value indicating whether the user report client reports metrics about itself.")]
	public bool IsSelfReporting;

	private bool isShowingError;

	private bool isSubmitting;

	[Tooltip("The display text for the progress text.")]
	public Text ProgressText;

	[Tooltip("A value indicating whether the user report client send events to analytics.")]
	public bool SendEventsToAnalytics;

	[Tooltip("The UI shown while submitting.")]
	public Canvas SubmittingPopup;

	[Tooltip("The summary input on the user report form.")]
	public InputField SummaryInput;

	[Tooltip("The thumbnail viewer on the user report form.")]
	public Image ThumbnailViewer;

	private UnityUserReportingUpdater unityUserReportingUpdater;

	public UserReport CurrentUserReport
	{
		get;
		private set;
	}

	public UserReportingState State
	{
		get
		{
			if (CurrentUserReport != null)
			{
				if (IsInSilentMode)
				{
					return UserReportingState.Idle;
				}
				if (isSubmitting)
				{
					return UserReportingState.SubmittingForm;
				}
				return UserReportingState.ShowingForm;
			}
			if (isCreatingUserReport)
			{
				return UserReportingState.CreatingUserReport;
			}
			return UserReportingState.Idle;
		}
	}

	public UserReportingScript()
	{
		UserReportSubmitting = new UnityEvent();
		unityUserReportingUpdater = new UnityUserReportingUpdater();
	}

	public void CancelUserReport()
	{
		CurrentUserReport = null;
		ClearForm();
	}

	private IEnumerator ClearError()
	{
		yield return new WaitForSeconds(10f);
		isShowingError = false;
	}

	private void ClearForm()
	{
		SummaryInput.text = null;
		DescriptionInput.text = null;
	}

	public void CreateUserReport()
	{
		if (!isCreatingUserReport)
		{
			isCreatingUserReport = true;
			UnityUserReporting.CurrentClient.TakeScreenshot(2048, 2048, delegate
			{
			});
			UnityUserReporting.CurrentClient.TakeScreenshot(512, 512, delegate
			{
			});
			UnityUserReporting.CurrentClient.CreateUserReport(delegate(UserReport br)
			{
				if (string.IsNullOrEmpty(br.ProjectIdentifier))
				{
					UnityEngine.Debug.LogWarning("The user report's project identifier is not set. Please setup cloud services using the Services tab or manually specify a project identifier when calling UnityUserReporting.Configure().");
				}
				br.Attachments.Add(new UserReportAttachment("Sample Attachment.txt", "SampleAttachment.txt", "text/plain", Encoding.UTF8.GetBytes("This is a sample attachment.")));
				string arg = "Unknown";
				string arg2 = "0.0";
				foreach (UserReportNamedValue deviceMetadatum in br.DeviceMetadata)
				{
					if (deviceMetadatum.Name == "Platform")
					{
						arg = deviceMetadatum.Value;
					}
					if (deviceMetadatum.Name == "Version")
					{
						arg2 = deviceMetadatum.Value;
					}
				}
				br.Dimensions.Add(new UserReportNamedValue("Platform.Version", $"{arg}.{arg2}"));
				CurrentUserReport = br;
				isCreatingUserReport = false;
				SetThumbnail(br);
				if (IsInSilentMode)
				{
					SubmitUserReport();
				}
			});
		}
	}

	public bool IsSubmitting()
	{
		return isSubmitting;
	}

	private void SetThumbnail(UserReport userReport)
	{
		if (userReport != null && ThumbnailViewer != null)
		{
			byte[] data = Convert.FromBase64String(userReport.Thumbnail.DataBase64);
			Texture2D texture2D = new Texture2D(1, 1);
			texture2D.LoadImage(data);
			ThumbnailViewer.sprite = Sprite.Create(texture2D, new Rect(0f, 0f, texture2D.width, texture2D.height), new Vector2(0.5f, 0.5f));
			ThumbnailViewer.preserveAspect = true;
		}
	}

	private void Start()
	{
		if (Application.isPlaying)
		{
			EventSystem x = UnityEngine.Object.FindObjectOfType<EventSystem>();
			if (x == null)
			{
				GameObject gameObject = new GameObject("EventSystem");
				gameObject.AddComponent<EventSystem>();
				gameObject.AddComponent<StandaloneInputModule>();
			}
		}
		if (UnityUserReporting.CurrentClient == null)
		{
			UnityUserReporting.Configure();
		}
	}

	public void SubmitUserReport()
	{
		if (!isSubmitting && CurrentUserReport != null)
		{
			isSubmitting = true;
			if (SummaryInput != null)
			{
				CurrentUserReport.Summary = SummaryInput.text;
			}
			if (CategoryDropdown != null)
			{
				Dropdown.OptionData optionData = CategoryDropdown.options[CategoryDropdown.value];
				string text = optionData.text;
				CurrentUserReport.Dimensions.Add(new UserReportNamedValue("Category", text));
				CurrentUserReport.Fields.Add(new UserReportNamedValue("Category", text));
			}
			if (DescriptionInput != null)
			{
				UserReportNamedValue item = default(UserReportNamedValue);
				item.Name = "Description";
				item.Value = DescriptionInput.text;
				CurrentUserReport.Fields.Add(item);
			}
			ClearForm();
			RaiseUserReportSubmitting();
			UnityUserReporting.CurrentClient.SendUserReport(CurrentUserReport, delegate(float uploadProgress, float downloadProgress)
			{
				if (ProgressText != null)
				{
					string text2 = $"{uploadProgress:P}";
					ProgressText.text = text2;
				}
			}, delegate(bool success, UserReport br2)
			{
				if (!success)
				{
					isShowingError = true;
					StartCoroutine(ClearError());
				}
				CurrentUserReport = null;
				isSubmitting = false;
			});
		}
	}

	private void Update()
	{
		if (IsHotkeyEnabled && UnityEngine.Input.GetKey(KeyCode.LeftShift) && UnityEngine.Input.GetKey(KeyCode.LeftAlt) && UnityEngine.Input.GetKeyDown(KeyCode.B))
		{
			CreateUserReport();
		}
		UnityUserReporting.CurrentClient.IsSelfReporting = IsSelfReporting;
		UnityUserReporting.CurrentClient.SendEventsToAnalytics = SendEventsToAnalytics;
		if (UserReportButton != null)
		{
			UserReportButton.interactable = (State == UserReportingState.Idle);
		}
		if (UserReportForm != null)
		{
			UserReportForm.enabled = (State == UserReportingState.ShowingForm);
		}
		if (SubmittingPopup != null)
		{
			SubmittingPopup.enabled = (State == UserReportingState.SubmittingForm);
		}
		if (ErrorPopup != null)
		{
			ErrorPopup.enabled = isShowingError;
		}
		unityUserReportingUpdater.Reset();
		StartCoroutine(unityUserReportingUpdater);
	}

	protected virtual void RaiseUserReportSubmitting()
	{
		if (UserReportSubmitting != null)
		{
			UserReportSubmitting.Invoke();
		}
	}
}
