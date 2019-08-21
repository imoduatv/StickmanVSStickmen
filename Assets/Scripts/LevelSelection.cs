using System;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LevelSelection : MonoBehaviour
{
	public static LevelSelection instance;

	public GameObject[] levelPanel;

	public GameObject Loading;

	public ScrollRect myScrollRect;

	public Text TotalStarsText;

	public Text RequiredStarsText;

	public int TotalStars;

	public int CheckTotalStars;

	public GameObject StarMessage;

	public GameObject panal2;

	public GameObject panal3;

	private void OnEnable()
	{
		ButtonScript.buttonDown = (EventHandler)Delegate.Combine(ButtonScript.buttonDown, new EventHandler(buttonDown));
		panal2.SetActive(value: false);
		panal3.SetActive(value: false);
	}

	private void OnDisable()
	{
		ButtonScript.buttonDown = (EventHandler)Delegate.Remove(ButtonScript.buttonDown, new EventHandler(buttonDown));
	}

	private void Start()
	{
		instance = this;
		if (PlayerPrefs.GetInt("Level60") == 1)
		{
			Panel(4);
		}
		else if (PlayerPrefs.GetInt("Level45") == 1)
		{
			Panel(3);
		}
		else if (PlayerPrefs.GetInt("Level30") == 1)
		{
			Panel(2);
		}
		else if (PlayerPrefs.GetInt("Level15") == 1)
		{
			Panel(1);
		}
		else
		{
			Panel(0);
		}
		Invoke("GetTotalStars", 0.01f);
	}

	private void buttonDown(object obj, EventArgs args)
	{
		string text = obj.ToString();
		if (text.Contains("Level"))
		{
			PlayerPrefs.SetString("LevelName", text);
			Invoke("LoadLevel", 0.25f);
		}
	}

	private void GetTotalStars()
	{
		for (int i = 0; i < 60; i++)
		{
			TotalStars += PlayerPrefs.GetInt("Level" + i + "Stars");
		}
		TotalStarsText.text = TotalStars.ToString();
	}

	public void LoadLevel()
	{
		StartLevel();
	}

	private void StartLevel()
	{
		base.gameObject.SetActive(value: false);
		Loading.SetActive(value: true);
		Invoke("LoadLevelDelay", 5f);
	}

	private void LoadLevelDelay()
	{
		SceneManager.LoadScene(PlayerPrefs.GetString("LevelName"));
	}

	public void Panel(int panelNum)
	{
		for (int i = 0; i < 5; i++)
		{
			levelPanel[i].SetActive(value: false);
		}
		levelPanel[panelNum].SetActive(value: true);
	}
}
