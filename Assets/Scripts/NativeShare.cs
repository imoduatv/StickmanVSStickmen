using System.Collections;
using System.IO;
using UnityEngine;

public class NativeShare : MonoBehaviour
{
	public string ScreenshotName = "screenshot.png";

	public void ShareScreenshotWithText(string text)
	{
		string text2 = Application.persistentDataPath + "/" + ScreenshotName;
		if (File.Exists(text2))
		{
			File.Delete(text2);
		}
		ScreenCapture.CaptureScreenshot(ScreenshotName);
		StartCoroutine(delayedShare(text2, text));
	}

	private IEnumerator delayedShare(string screenShotPath, string text)
	{
		while (!File.Exists(screenShotPath))
		{
			yield return new WaitForSeconds(0.05f);
		}
		Share(text, screenShotPath, string.Empty, string.Empty);
	}

	public void Rate(string str)
	{
		Application.OpenURL(str);
	}

	public void Share(string shareText, string imagePath, string url, string subject = "")
	{
		AndroidJavaClass androidJavaClass = new AndroidJavaClass("android.content.Intent");
		AndroidJavaObject androidJavaObject = new AndroidJavaObject("android.content.Intent");
		androidJavaObject.Call<AndroidJavaObject>("setAction", new object[1]
		{
			androidJavaClass.GetStatic<string>("ACTION_SEND")
		});
		AndroidJavaClass androidJavaClass2 = new AndroidJavaClass("android.net.Uri");
		AndroidJavaObject androidJavaObject2 = androidJavaClass2.CallStatic<AndroidJavaObject>("parse", new object[1]
		{
			"file://" + imagePath
		});
		androidJavaObject.Call<AndroidJavaObject>("putExtra", new object[2]
		{
			androidJavaClass.GetStatic<string>("EXTRA_STREAM"),
			androidJavaObject2
		});
		androidJavaObject.Call<AndroidJavaObject>("setType", new object[1]
		{
			"image/png"
		});
		androidJavaObject.Call<AndroidJavaObject>("putExtra", new object[2]
		{
			androidJavaClass.GetStatic<string>("EXTRA_TEXT"),
			shareText
		});
		AndroidJavaClass androidJavaClass3 = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		AndroidJavaObject @static = androidJavaClass3.GetStatic<AndroidJavaObject>("currentActivity");
		AndroidJavaObject androidJavaObject3 = androidJavaClass.CallStatic<AndroidJavaObject>("createChooser", new object[2]
		{
			androidJavaObject,
			subject
		});
		@static.Call("startActivity", androidJavaObject3);
	}
}
