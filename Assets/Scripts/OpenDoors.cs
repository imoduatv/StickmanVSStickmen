using UnityEngine;
using UnityEngine.SceneManagement;

public class OpenDoors : MonoBehaviour
{
	public GameObject DoorUp;

	public GameObject DoorDown;

	public bool OpenDoor;

	public Animator thisAnimator;

	private void Start()
	{
		thisAnimator = GetComponent<Animator>();
	}

	private void Update()
	{
		if (OpenDoor)
		{
			float num = Mathf.Lerp(1f, 0f, Time.deltaTime * 5f);
			Transform transform = DoorDown.transform;
			Vector3 localScale = DoorDown.transform.localScale;
			transform.localScale = new Vector3(1f, Mathf.Lerp(localScale.y, 0f, Time.deltaTime * 10f), 1f);
			Transform transform2 = DoorUp.transform;
			Vector3 localScale2 = DoorUp.transform.localScale;
			transform2.localScale = new Vector3(1f, Mathf.Lerp(localScale2.y, 0f, Time.deltaTime * 10f), 1f);
			if (thisAnimator != null)
			{
				thisAnimator.SetBool("opened", value: true);
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 14)
			{
				InGameUI.instance.help.SetActive(value: false);
				InGameUI.instance.Hint.SetActive(value: false);
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 18)
			{
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(0).gameObject.SetActive(value: false);
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(1).gameObject.SetActive(value: false);
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 24)
			{
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(0).gameObject.SetActive(value: false);
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(2).gameObject.SetActive(value: true);
			}
		}
	}
}
