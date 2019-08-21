using UnityEngine;

public class LevelUnlock : MonoBehaviour
{
	public GameObject PreviousLevel;

	private void Start()
	{
		if (PlayerPrefs.GetInt(PreviousLevel.gameObject.name) == 1)
		{
			GetComponent<ButtonScript>().enabled = true;
			PreviousLevel.gameObject.transform.GetChild(0).GetChild(1).gameObject.SetActive(value: true);
			return;
		}
		GetComponent<ButtonScript>().enabled = false;
		if (PreviousLevel.gameObject.name != "Level1")
		{
			Invoke("turnRed", 0.001f);
		}
	}

	private void turnRed()
	{
		if (PreviousLevel.gameObject.GetComponent<ButtonScript>().enabled)
		{
			PreviousLevel.gameObject.GetComponent<LevelUnlock>().PreviousLevel.transform.GetChild(0).GetChild(2).gameObject.SetActive(value: true);
		}
	}
}
