using GoogleMobileAds.Api;
using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Advertisements;
using UnityEngine.Analytics;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class _ads_manager : MonoBehaviour
{
	private BannerView bannerView;

	private BannerView bannerView_MedRect;

	private InterstitialAd interstitial;

	private RewardBasedVideoAd rewardBasedVideo;

	private float deltaTime;

	private static string outputMessage = string.Empty;

	private List<string> delegateHistory;

	private bool hasInterstitial;

	private bool hasRewardedVideo;

	private int frameCount;

	private bool activeAgeGate;

	private bool autocache = true;

	private bool showInterstitial = true;

	private bool showRewardedVideo = true;

	private int BANNER_HEIGHT = 110;

	public static bool isLaunched = false;

	public string _admob_App_id;

	public string _admob_Banner;

	public string _admob_Interstitial;

	public string _admob_Rewarded;

	public string _unity_id;

	[HideInInspector]
	public bool is_level_selection_ad_enabled = true;

	[HideInInspector]
	public bool is_level_complete_ad_enabled = true;

	[HideInInspector]
	public bool is_level_fail_ad_enabled = true;

	[HideInInspector]
	public bool is_pause_selection_ad_enabled = true;

	[HideInInspector]
	public bool is_quit_ad_enabled = true;

	[HideInInspector]
	public bool is_loading_ad_enabled = true;

	[HideInInspector]
	public bool is_reward_ad_enabled = true;

	[HideInInspector]
	public int priorityForComplete;

	[HideInInspector]
	public int priorityForFail;

	[HideInInspector]
	public int priorityForPause;

	[HideInInspector]
	public int priorityForQuit;

	[HideInInspector]
	public bool isSharable;

	public float RewardAfter_inSeconds;

	public static bool isShareOrRewardedDoneForUnlockLevel_16 = false;

	public static bool isShareOrRewardedDoneForUnlockLevel_31 = false;

	public static bool isShareOrRewardedDoneForUnlockLevel_46 = false;

	private static _ads_manager _instance;

	private string zoniId = "rewardedVideo";

	public int loadingTime;

	public static _ads_manager Instance
	{
		get
		{
			if (_instance == null)
			{
				_instance = UnityEngine.Object.FindObjectOfType<_ads_manager>();
				UnityEngine.Object.DontDestroyOnLoad(_instance.gameObject);
			}
			return _instance;
		}
	}

	public static string OutputMessage
	{
		set
		{
			outputMessage = value;
		}
	}

	private void Awake()
	{
		if (_instance == null)
		{
			_instance = this;
			UnityEngine.Object.DontDestroyOnLoad(this);
		}
		else if (this != _instance)
		{
			UnityEngine.Object.Destroy(base.gameObject);
		}
	}

	private void Start()
	{
		MobileAds.Initialize(_admob_App_id);
		RequestInterstitial();
		Advertisement.Initialize(_unity_id, testMode: false);
	}

	public static int GetVersionCode()
	{
		AndroidJavaClass androidJavaClass = new AndroidJavaClass("com.unity3d.player.UnityPlayer");
		AndroidJavaObject @static = androidJavaClass.GetStatic<AndroidJavaObject>("currentActivity");
		AndroidJavaObject androidJavaObject = @static.Call<AndroidJavaObject>("getPackageManager", new object[0]);
		string text = @static.Call<string>("getPackageName", new object[0]);
		AndroidJavaObject androidJavaObject2 = androidJavaObject.Call<AndroidJavaObject>("getPackageInfo", new object[2]
		{
			text,
			0
		});
		return androidJavaObject2.Get<int>("versionCode");
	}

	public void checkTotalTimeForShare(bool reset = false)
	{
		if (!reset)
		{
			string text = DateTime.Now.ToString("HH:mm:ss");
			if (!PlayerPrefs.HasKey("shareTime"))
			{
				text = DateTime.Now.ToString("HH:mm:ss");
				PlayerPrefs.SetString("shareTime", text);
				RewardAfter_inSeconds = 5f;
			}
			else
			{
				text = PlayerPrefs.GetString("shareTime");
			}
			DateTime d = DateTime.ParseExact(text, "HH:mm:ss", null);
			TimeSpan t = DateTime.Now - d;
			if ((TimeSpan.FromSeconds(RewardAfter_inSeconds) - t).Seconds < 0)
			{
				if (MainMenu.instance != null)
				{
					MainMenu.instance.Sharebutton.interactable = true;
					MainMenu.instance.Sharebutton.transform.GetChild(0).GetComponent<Text>().text = "SHARE";
					isSharable = true;
					PlayerPrefs.DeleteKey("shareTime");
				}
			}
			else if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex == 2)
			{
				isSharable = false;
				MainMenu.instance.Sharebutton.interactable = false;
				string text2 = (TimeSpan.FromSeconds(RewardAfter_inSeconds) - t).ToString();
				if (!text2.Contains("-"))
				{
					MainMenu.instance.Sharebutton.transform.GetChild(0).GetComponent<Text>().text = text2.Substring(0, text2.LastIndexOf("."));
				}
			}
		}
		else
		{
			string text3 = DateTime.Now.ToString("HH:mm:ss");
			text3 = DateTime.Now.ToString("HH:mm:ss");
			PlayerPrefs.SetString("shareTime", text3);
			isSharable = false;
			RewardAfter_inSeconds = 43200f;
		}
	}

	private void Update()
	{
		if (!isSharable)
		{
			checkTotalTimeForShare();
		}
	}

	private void OnApplicationPause(bool isPause)
	{
		if (isPause)
		{
			if (SceneManager.GetActiveScene().buildIndex - 2 == 1 || SceneManager.GetActiveScene().buildIndex - 2 == 0)
			{
				Analytics.CustomEvent("home", new Dictionary<string, object>
				{
					{
						"index",
						0
					}
				});
			}
			else
			{
				Analytics.CustomEvent("home", new Dictionary<string, object>
				{
					{
						"index",
						SceneManager.GetActiveScene().buildIndex - 2
					}
				});
			}
		}
	}

	public void ShowNextLevel()
	{
		UnityEngine.SceneManagement.SceneManager.LoadScene(UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex + 1);
	}

	public void GetReward()
	{
		if (MainMenu.videoNumber == 1)
		{
			PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 250);
			Text totalCoinsText = MainMenu.instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			MainMenu.instance.TotalCoinsText.text = text;
			totalCoinsText.text = text;
		}
		else if (MainMenu.videoNumber == 2)
		{
			isShareOrRewardedDoneForUnlockLevel_16 = true;
			LevelSelection.instance.TotalStars = 45;
			LevelSelection.instance.CheckTotalStars = 45;
			PlayerPrefs.SetInt("Level15", 1);
			UnityEngine.SceneManagement.SceneManager.LoadScene(18);
		}
		else if (MainMenu.videoNumber == 3)
		{
			isShareOrRewardedDoneForUnlockLevel_31 = true;
			LevelSelection.instance.TotalStars = 88;
			LevelSelection.instance.CheckTotalStars = 88;
			PlayerPrefs.SetInt("Level45", 1);
			UnityEngine.SceneManagement.SceneManager.LoadScene(33);
		}
		else if (MainMenu.videoNumber == 4)
		{
			isShareOrRewardedDoneForUnlockLevel_46 = true;
			LevelSelection.instance.TotalStars = 125;
			LevelSelection.instance.CheckTotalStars = 125;
			PlayerPrefs.SetInt("Level60", 1);
			UnityEngine.SceneManagement.SceneManager.LoadScene(48);
		}
		else if (MainMenu.videoNumber == 5)
		{
			MainMenu.videoNumber = 0;
			GameManager.instance.currentShot = 6;
			InGameUI.instance.ShootBtn.SetActive(value: true);
			InGameUI.instance.TimeBar.SetActive(value: true);
			InGameUI.instance.ReloadRewardPanel.SetActive(value: false);
			InGameUI.instance.GameOverUi.SetActive(value: false);
			InGameUI.instance.PauseBtn.SetActive(value: true);
			InGameUI.instance.HintBulbPerma.SetActive(value: true);
			InGameUI.instance.PanelsEnabled = false;
			GameManager.instance.stopTimer = false;
			InGameUI.instance.cancel_invoke_ads();
			GameManager.instance.timer = false;
			GameManager.instance.alarm = false;
		}
		else if (MainMenu.videoNumber == 6)
		{
			MainMenu.videoNumber = 0;
			InGameUI.instance.ShootBtn.SetActive(value: true);
			InGameUI.instance.TimeBar.SetActive(value: true);
			InGameUI.instance.ReloadRewardPanel.SetActive(value: false);
			InGameUI.instance.TimerRewardPanel.SetActive(value: false);
			InGameUI.instance.GameOverUi.SetActive(value: false);
			InGameUI.instance.PauseBtn.SetActive(value: true);
			InGameUI.instance.HintBulbPerma.SetActive(value: true);
			InGameUI.instance.PanelsEnabled = false;
			GameManager.instance.stopTimer = false;
			GameManager.instance.PlayerAlive();
			GameManager.instance.totalTime += 15f;
			InGameUI.instance.cancel_invoke_ads();
			GameManager.instance.timer = false;
			GameManager.instance.alarm = false;
		}
	}

	public void complete_ad()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			if (interstitial.IsLoaded())
			{
				interstitial.Show();
			}
			else if (Advertisement.IsReady())
			{
				Advertisement.Show();
			}
		}
	}

	public void fail_Ads()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			if (interstitial.IsLoaded())
			{
				interstitial.Show();
			}
			else if (Advertisement.IsReady())
			{
				Advertisement.Show();
			}
		}
	}

	public void pause_Ads()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			if (Advertisement.IsReady())
			{
				Advertisement.Show();
			}
			else if (interstitial.IsLoaded())
			{
				interstitial.Show();
			}
		}
	}

	public void _show_admob_interstitial_Ad()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0 && interstitial.IsLoaded())
		{
			interstitial.Show();
		}
	}

	public void _show_admob_RewardBasedVideo_Ad()
	{
		if (rewardBasedVideo.IsLoaded())
		{
			rewardBasedVideo.Show();
		}
	}

	public void _show_unity_Ad()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0 && Advertisement.IsReady())
		{
			Advertisement.Show();
		}
	}

	public void _Show_unity_rewarded_Ad()
	{
		if (Advertisement.IsReady(zoniId))
		{
			ShowOptions showOptions = new ShowOptions();
			showOptions.resultCallback = HandleShowResult;
			ShowOptions showOptions2 = showOptions;
			Advertisement.Show(zoniId, showOptions2);
		}
	}

	private void HandleShowResult(ShowResult result)
	{
		switch (result)
		{
		case ShowResult.Finished:
			GetReward();
			break;
		}
	}

	public void inAppDeals(int _num)
	{
		GetComponent<InappPurchasing>().BuyDeals(_num);
	}

	public void InappSuccessArgs(string _name)
	{
		if (_name == GetComponent<InappPurchasing>().InappKeys[0])
		{
			if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex == 2)
			{
				MonoBehaviour.print("heloads1");
				MainMenu.instance.removeads_btns_mm();
			}
			if (UnityEngine.SceneManagement.SceneManager.GetActiveScene().buildIndex > 2)
			{
				InGameUI.instance.removeads_btns();
			}
			PlayerPrefs.SetInt("RemoveAds", 1);
			DestroyBanner();
		}
		else if (_name == GetComponent<InappPurchasing>().InappKeys[1])
		{
			for (int i = 1; i < 61; i++)
			{
				PlayerPrefs.SetInt("Level" + i, 1);
			}
		}
		else if (_name == GetComponent<InappPurchasing>().InappKeys[2])
		{
			PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 2500);
			Text totalCoinsText = MainMenu.instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			MainMenu.instance.TotalCoinsText.text = text;
			totalCoinsText.text = text;
		}
		else if (_name == GetComponent<InappPurchasing>().InappKeys[3])
		{
			PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 5000);
			Text totalCoinsText2 = MainMenu.instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			MainMenu.instance.TotalCoinsText.text = text;
			totalCoinsText2.text = text;
		}
		else if (_name == GetComponent<InappPurchasing>().InappKeys[4])
		{
			PlayerPrefs.SetInt("RemoveAds", 1);
			PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 7500);
			Text totalCoinsText3 = MainMenu.instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			MainMenu.instance.TotalCoinsText.text = text;
			totalCoinsText3.text = text;
			DestroyBanner();
		}
	}

	public void admobRewarded_unity()
	{
		if (Advertisement.IsReady(zoniId))
		{
			ShowOptions showOptions = new ShowOptions();
			showOptions.resultCallback = HandleShowResult;
			ShowOptions showOptions2 = showOptions;
			Advertisement.Show(zoniId, showOptions2);
			return;
		}
		if (MainMenu.instance != null)
		{
			MainMenu.instance.NoRewardedTxt.gameObject.SetActive(value: false);
			MainMenu.instance.NoRewardedTxt.gameObject.SetActive(value: true);
			MainMenu.instance.NoRewardedTxtPanel1.gameObject.SetActive(value: false);
			MainMenu.instance.NoRewardedTxtPanel1.gameObject.SetActive(value: true);
			MainMenu.instance.NoRewardedTxtPanel2.gameObject.SetActive(value: false);
			MainMenu.instance.NoRewardedTxtPanel2.gameObject.SetActive(value: true);
			MainMenu.instance.NoRewardedTxtPanel3.gameObject.SetActive(value: false);
			MainMenu.instance.NoRewardedTxtPanel3.gameObject.SetActive(value: true);
		}
		if (InGameUI.instance != null)
		{
			InGameUI.instance.NoRewardedTxtPanel_ingame1.gameObject.SetActive(value: false);
			InGameUI.instance.NoRewardedTxtPanel_ingame1.gameObject.SetActive(value: true);
			InGameUI.instance.NoRewardedTxtPanel_ingame2.gameObject.SetActive(value: false);
			InGameUI.instance.NoRewardedTxtPanel_ingame2.gameObject.SetActive(value: true);
		}
	}

	public AdRequest CreateAdRequest()
	{
		return new AdRequest.Builder().AddExtra("max_ad_content_rating", "MA").Build();
	}

	private void showBanner()
	{
		bannerView.Show();
	}

	public void _show_admob_Banner(AdPosition pos)
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			if (bannerView != null)
			{
				bannerView.SetPosition(pos);
				showBanner();
				return;
			}
			bannerView = new BannerView(_admob_Banner, AdSize.Banner, AdPosition.TopLeft);
			bannerView.OnAdLoaded += HandleAdLoaded;
			bannerView.OnAdFailedToLoad += HandleAdFailedToLoad;
			bannerView.OnAdOpening += HandleAdOpened;
			bannerView.OnAdClosed += HandleAdClosed;
			bannerView.OnAdLeavingApplication += HandleAdLeftApplication;
			bannerView.LoadAd(CreateAdRequest());
		}
	}

	public void _show_admob_Banner_Large(AdPosition pos, AdSize bannerType, bool _req = false)
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			try
			{
				if (!_req)
				{
					bannerView.SetPosition(pos);
					bannerView.Show();
				}
				else
				{
					if (bannerView != null)
					{
						bannerView.Hide();
						bannerView.Destroy();
					}
					bannerView = new BannerView(_admob_Banner, bannerType, pos);
					bannerView.OnAdLoaded += HandleAdLoaded;
					bannerView.OnAdFailedToLoad += HandleAdFailedToLoad;
					bannerView.OnAdOpening += HandleAdOpened;
					bannerView.OnAdClosed += HandleAdClosed;
					bannerView.OnAdLeavingApplication += HandleAdLeftApplication;
					bannerView.LoadAd(CreateAdRequest());
				}
			}
			catch (Exception)
			{
			}
		}
	}

	public void _ShowByRequestAdmobMedRecBannerAtTopRight()
	{
		RequestBannerAs(AdSize.MediumRectangle, AdPosition.TopRight);
	}

	public void _ShowByRequestAdmobStandardBannerAtTopLeft()
	{
		RequestBannerAs(AdSize.Banner, AdPosition.TopLeft);
	}

	private void RequestBannerAs(AdSize bannerSize, AdPosition bannerPosition)
	{
		if (bannerView != null)
		{
			bannerView.Destroy();
		}
		bannerView = new BannerView(_admob_Banner, bannerSize, bannerPosition);
		bannerView.OnAdLoaded += HandleAdLoaded;
		bannerView.OnAdFailedToLoad += HandleAdFailedToLoad;
		bannerView.OnAdOpening += HandleAdOpened;
		bannerView.OnAdClosed += HandleAdClosed;
		bannerView.OnAdLeavingApplication += HandleAdLeftApplication;
		bannerView.LoadAd(CreateAdRequest());
	}

	public void _ShowAdmobStandardBannerAtTopLeft()
	{
		__ShowAdmobStandardBannerAt(AdPosition.TopLeft);
	}

	public void __ShowAdmobStandardBannerAt(AdPosition adPosition)
	{
		try
		{
			if (PlayerPrefs.GetInt("RemoveAds") == 0)
			{
				if (bannerView != null)
				{
					try
					{
						bannerView.SetPosition(adPosition);
						try
						{
							bannerView.Show();
						}
						catch (Exception)
						{
						}
					}
					catch (Exception)
					{
					}
				}
				else
				{
					try
					{
						bannerView = new BannerView(_admob_Banner, AdSize.Banner, adPosition);
						bannerView.OnAdLoaded += HandleAdLoaded;
						bannerView.OnAdFailedToLoad += HandleAdFailedToLoad;
						bannerView.OnAdOpening += HandleAdOpened;
						bannerView.OnAdClosed += HandleAdClosed;
						bannerView.OnAdLeavingApplication += HandleAdLeftApplication;
						bannerView.LoadAd(CreateAdRequest());
					}
					catch (Exception)
					{
					}
				}
			}
		}
		catch (Exception)
		{
		}
	}

	public void _ShowAdmobMediumRectangleBannerAtTopRight()
	{
		__ShowAdmobMediumRectangleBannerAt(AdPosition.TopRight);
	}

	public void __ShowAdmobMediumRectangleBannerAt(AdPosition adPosition)
	{
		try
		{
			if (PlayerPrefs.GetInt("RemoveAds") == 0)
			{
				if (bannerView_MedRect != null)
				{
					try
					{
						bannerView_MedRect.SetPosition(adPosition);
						try
						{
							bannerView_MedRect.Show();
						}
						catch (Exception)
						{
						}
					}
					catch (Exception)
					{
					}
				}
				else
				{
					try
					{
						bannerView_MedRect = new BannerView(_admob_Banner, AdSize.MediumRectangle, adPosition);
						bannerView_MedRect.OnAdLoaded += HandleAdLoaded;
						bannerView_MedRect.OnAdFailedToLoad += HandleAdFailedToLoad;
						bannerView_MedRect.OnAdOpening += HandleAdOpened;
						bannerView_MedRect.OnAdClosed += HandleAdClosed;
						bannerView_MedRect.OnAdLeavingApplication += HandleAdLeftApplication;
						bannerView_MedRect.LoadAd(CreateAdRequest());
					}
					catch (Exception)
					{
					}
				}
			}
		}
		catch (Exception)
		{
		}
	}

	public void _DestroyBanner()
	{
		if (bannerView != null)
		{
			bannerView.Destroy();
		}
	}

	public void DestroyBanner()
	{
		bannerView.Hide();
	}

	public void hideBanner()
	{
		bannerView.Hide();
	}

	public void __HideStandardBanner()
	{
		if (bannerView != null)
		{
			bannerView.Hide();
		}
	}

	public void __HideMedRectBanner()
	{
		if (bannerView_MedRect != null)
		{
			bannerView_MedRect.Hide();
		}
	}

	public void __HideAllBanners()
	{
		if (bannerView != null)
		{
			bannerView.Hide();
		}
		if (bannerView_MedRect != null)
		{
			bannerView_MedRect.Hide();
		}
	}

	public void RequestInterstitial()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			if (interstitial != null)
			{
				interstitial.Destroy();
			}
			interstitial = new InterstitialAd(_admob_Interstitial);
			interstitial.OnAdLoaded += HandleInterstitialLoaded;
			interstitial.OnAdFailedToLoad += HandleInterstitialFailedToLoad;
			interstitial.OnAdOpening += HandleInterstitialOpened;
			interstitial.OnAdClosed += HandleInterstitialClosed;
			interstitial.OnAdLeavingApplication += HandleInterstitialLeftApplication;
			interstitial.LoadAd(CreateAdRequest());
		}
	}

	public void RequestRewardBasedVideo()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			rewardBasedVideo.LoadAd(CreateAdRequest(), _admob_Rewarded);
		}
	}

	public void HandleAdLoaded(object sender, EventArgs args)
	{
	}

	public void HandleAdFailedToLoad(object sender, AdFailedToLoadEventArgs args)
	{
	}

	public void HandleAdOpened(object sender, EventArgs args)
	{
	}

	public void HandleAdClosed(object sender, EventArgs args)
	{
	}

	public void HandleAdLeftApplication(object sender, EventArgs args)
	{
	}

	public void HandleInterstitialLoaded(object sender, EventArgs args)
	{
	}

	public void HandleInterstitialFailedToLoad(object sender, AdFailedToLoadEventArgs args)
	{
	}

	public void HandleInterstitialOpened(object sender, EventArgs args)
	{
	}

	public void HandleInterstitialClosed(object sender, EventArgs args)
	{
		RequestInterstitial();
	}

	public void HandleInterstitialLeftApplication(object sender, EventArgs args)
	{
	}

	public void HandleNativeExpressAdLoaded(object sender, EventArgs args)
	{
	}

	public void HandleNativeExpresseAdFailedToLoad(object sender, AdFailedToLoadEventArgs args)
	{
	}

	public void HandleNativeExpressAdOpened(object sender, EventArgs args)
	{
	}

	public void HandleNativeExpressAdClosed(object sender, EventArgs args)
	{
	}

	public void HandleNativeExpressAdLeftApplication(object sender, EventArgs args)
	{
	}

	public void HandleRewardBasedVideoLoaded(object sender, EventArgs args)
	{
	}

	public void HandleRewardBasedVideoFailedToLoad(object sender, AdFailedToLoadEventArgs args)
	{
	}

	public void HandleRewardBasedVideoOpened(object sender, EventArgs args)
	{
	}

	public void HandleRewardBasedVideoStarted(object sender, EventArgs args)
	{
	}

	public void HandleRewardBasedVideoClosed(object sender, EventArgs args)
	{
		RequestRewardBasedVideo();
	}

	public void HandleRewardBasedVideoRewarded(object sender, Reward args)
	{
		GetReward();
		string type = args.Type;
		double amount = args.Amount;
	}

	public void HandleRewardBasedVideoLeftApplication(object sender, EventArgs args)
	{
	}

	public void bannerTestShowTopRight()
	{
		_show_admob_Banner(AdPosition.TopRight);
	}
}
