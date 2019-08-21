using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Analytics;
using UnityEngine.UI;

public class ShareNetwork : MonoBehaviour
{
	public string link = string.Empty;

	private string subject = string.Empty;

	public int num;

	public void shareText()
	{
		_ads_manager.Instance.checkTotalTimeForShare(reset: true);
		PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 200);
		Text totalCoinsText = MainMenu.instance.TotalCoinsText2;
		string text = PlayerPrefs.GetInt("TotalCoins").ToString();
		MainMenu.instance.TotalCoinsText.text = text;
		totalCoinsText.text = text;
		AndroidJavaClass androidJavaClass = new AndroidJavaClass("android.content.Intent");
		AndroidJavaObject androidJavaObject = new AndroidJavaObject("android.content.Intent");
		androidJavaObject.Call<AndroidJavaObject>("setAction", new object[1]
		{
			androidJavaClass.GetStatic<string>("ACTION_SEND")
		});
		androidJavaObject.Call<AndroidJavaObject>("setType", new object[1]
		{
			"text/plain"
		});
		androidJavaObject.Call<AndroidJavaObject>("putExtra", new object[2]
		{
			androidJavaClass.GetStatic<string>("EXTRA_TEXT"),
			link
		});
		AndroidJavaClass androidJavaClass2 = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		AndroidJavaObject @static = androidJavaClass2.GetStatic<AndroidJavaObject>("currentActivity");
		@static.Call("startActivity", androidJavaObject);
	}

	public void level()
	{
		_ads_manager.isShareOrRewardedDoneForUnlockLevel_16 = true;
		Invoke("LevelNumber", 4f);
	}

	private void LevelNumber()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene(num);
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				3
			}
		});
	}

	public void level1()
	{
		_ads_manager.isShareOrRewardedDoneForUnlockLevel_31 = true;
		Invoke("LevelNumber1", 4f);
	}

	private void LevelNumber1()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene(num + 15);
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				3
			}
		});
	}

	public void level2()
	{
		_ads_manager.isShareOrRewardedDoneForUnlockLevel_46 = true;
		Invoke("LevelNumber2", 4f);
	}

	private void LevelNumber2()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene(num + 30);
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				3
			}
		});
	}

	public void shareText1()
	{
		AndroidJavaClass androidJavaClass = new AndroidJavaClass("android.content.Intent");
		AndroidJavaObject androidJavaObject = new AndroidJavaObject("android.content.Intent");
		androidJavaObject.Call<AndroidJavaObject>("setAction", new object[1]
		{
			androidJavaClass.GetStatic<string>("ACTION_SEND")
		});
		androidJavaObject.Call<AndroidJavaObject>("setType", new object[1]
		{
			"text/plain"
		});
		androidJavaObject.Call<AndroidJavaObject>("putExtra", new object[2]
		{
			androidJavaClass.GetStatic<string>("EXTRA_TEXT"),
			link
		});
		AndroidJavaClass androidJavaClass2 = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		AndroidJavaObject @static = androidJavaClass2.GetStatic<AndroidJavaObject>("currentActivity");
		@static.Call("startActivity", androidJavaObject);
	}

	public void shareText2()
	{
		AndroidJavaClass androidJavaClass = new AndroidJavaClass("android.content.Intent");
		AndroidJavaObject androidJavaObject = new AndroidJavaObject("android.content.Intent");
		androidJavaObject.Call<AndroidJavaObject>("setAction", new object[1]
		{
			androidJavaClass.GetStatic<string>("ACTION_SEND")
		});
		androidJavaObject.Call<AndroidJavaObject>("setType", new object[1]
		{
			"text/plain"
		});
		androidJavaObject.Call<AndroidJavaObject>("putExtra", new object[2]
		{
			androidJavaClass.GetStatic<string>("EXTRA_TEXT"),
			link
		});
		AndroidJavaClass androidJavaClass2 = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		AndroidJavaObject @static = androidJavaClass2.GetStatic<AndroidJavaObject>("currentActivity");
		@static.Call("startActivity", androidJavaObject);
	}
}
