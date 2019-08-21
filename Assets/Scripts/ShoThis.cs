using UnityEngine;
using UnityEngine.SceneManagement;

public class ShoThis : MonoBehaviour
{
	public static ShoThis instance;

	public int levelNo;

	public bool isHelpLevel;

	private bool once;

	private void Awake()
	{
		instance = this;
	}

	private void OnEnable()
	{
		if (SceneManager.GetActiveScene().buildIndex - 2 != levelNo)
		{
			base.gameObject.SetActive(value: false);
			isHelpLevel = false;
		}
		else
		{
			isHelpLevel = true;
		}
	}

	public void AutoShoot()
	{
		InGameUI.instance.Shoot();
		GameManager.instance.stopTimer = false;
		HUD.instance.canSetCursorPosition = true;
	}

	private void Update()
	{
		if (SceneManager.GetActiveScene().buildIndex - 2 == 9 && HUD.instance.MoveSlider.value >= 0.5f)
		{
			base.gameObject.SetActive(value: false);
			MonoBehaviour.print("Level 9 Timer Should Start Now");
			GameManager.instance.stopTimer = false;
		}
	}

	public void hide()
	{
		base.gameObject.SetActive(value: false);
		InGameUI.instance.HudUI.SetActive(value: true);
		Time.timeScale = 1f;
	}
}
