using System;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Analytics;
using UnityEngine.Audio;
using UnityEngine.UI;

public class MainMenu : MonoBehaviour
{
	[SerializeField]
	private GameObject MenuUI;

	public GameObject LevelSelectionUI;

	[SerializeField]
	private GameObject LoadingUi;

	[SerializeField]
	private GameObject ExitUi;

	[SerializeField]
	private GameObject GunSelectionUi;

	[SerializeField]
	private GameObject ShopUi;

	public static MainMenu instance;

	public GameObject settingPanel;

	public Sprite[] soundOnOff;

	public GameObject soundButton;

	public GameObject musicButton;

	public GameObject checkActivityObj;

	public GameObject noads_btn;

	public GameObject WelcomeBonus;

	public GameObject GuideToStoreMM;

	public GameObject GuideToStoreGS;

	public GameObject[] SelectBtn;

	public GameObject[] BuyBtn;

	public GameObject[] Selected;

	public GameObject[] PriceGO;

	public GameObject[] selected_boarders;

	public Animator buttonAnim;

	public int[] Gunprice;

	public Text TotalCoinsText;

	public Text TotalCoinsText2;

	public Text NoRewardedTxt;

	public Text NoRewardedTxtPanel1;

	public Text NoRewardedTxtPanel2;

	public Text NoRewardedTxtPanel3;

	public static bool isSound = true;

	public static bool isMusic = true;

	private bool escape2;

	public AudioMixer Mixer;

	public static int videoNumber;

	public Button Sharebutton;

	public Button GetRewardButton;

	public string[] remove_Ads_dialogs;

	public GameObject crossPromoAd;

	public static bool hasAdShown;

	private void Awake()
	{
		videoNumber = 0;
		if (InGameUI.isComplete)
		{
			MenuUI.SetActive(value: false);
			LevelSelectionUI.SetActive(value: true);
			LoadingUi.SetActive(value: false);
			ExitUi.SetActive(value: false);
			_ads_manager.Instance.__HideAllBanners();
		}
		else
		{
			MenuUI.SetActive(value: true);
			LevelSelectionUI.SetActive(value: false);
			LoadingUi.SetActive(value: false);
			ExitUi.SetActive(value: false);
			if (InGameUI.isGuideToStore)
			{
				MenuUI.SetActive(value: false);
				GunSelectionUi.SetActive(value: true);
			}
		}
		InGameUI.isRestart = false;
		PlayerPrefs.SetInt("Gun0", 1);
	}

	private void Start()
	{
		if (PlayerPrefs.GetInt("FirstTime") == 0)
		{
			PlayerPrefs.DeleteAll();
			WelcomeBonus.SetActive(value: true);
			PlayerPrefs.SetInt("FirstTime", 1);
		}
		else
		{
			_ads_manager.Instance.__HideAllBanners();
			_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
		}
		instance = this;
		if (PlayerPrefs.GetInt("RemoveAds") == 1)
		{
			removeads_btns_mm();
		}
		else
		{
			remove_Ads_dialogs_fun();
			noads_btn.SetActive(value: true);
		}
		InGameUI.failcount = 0;
		soundButton.GetComponent<Image>().sprite = ((!isSound) ? soundOnOff[1] : soundOnOff[0]);
		musicButton.GetComponent<Image>().sprite = ((!isMusic) ? soundOnOff[1] : soundOnOff[0]);
		SelectGun(PlayerPrefs.GetInt("SelectedGun"));
		if (GuideToStoreMM.activeSelf)
		{
			buttonAnim.enabled = false;
		}
		else
		{
			buttonAnim.enabled = true;
		}
		Text totalCoinsText = instance.TotalCoinsText2;
		string text = PlayerPrefs.GetInt("TotalCoins", 0).ToString();
		instance.TotalCoinsText.text = text;
		totalCoinsText.text = text;
		Invoke("OnC", 1f);
		if (PlayerPrefs.GetInt("Session", 0) == 0)
		{
			PlayerPrefs.SetInt("Session", 1);
			hasAdShown = true;
		}
		else if (!hasAdShown)
		{
			crossPromoAd.SetActive(value: true);
			hasAdShown = true;
			Invoke("DestroyBanner", 0.25f);
		}
	}

	public void DestroyBanner()
	{
		_ads_manager.Instance.__HideAllBanners();
	}

	public void ShowAdmobBannerAgain()
	{
		_ads_manager.Instance.__HideAllBanners();
		_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
	}

	private void OnC()
	{
		if (GuideToStoreMM.activeSelf)
		{
			buttonAnim.enabled = false;
		}
		else
		{
			buttonAnim.enabled = true;
		}
	}

	private void Update()
	{
		if (UnityEngine.Input.GetKeyDown(KeyCode.Escape))
		{
			if (ShopUi.activeSelf)
			{
				CloseShop();
			}
			else if (ExitUi.activeSelf)
			{
				ExitNo();
			}
			else if (settingPanel.activeSelf)
			{
				SettingPanel(setting: false);
			}
			else if (MenuUI.activeSelf)
			{
				ExitButton();
			}
			else if (GunSelectionUi.activeSelf)
			{
				BackFromGS();
			}
			else if (LevelSelectionUI.activeSelf)
			{
				LevelSelectionBackButton();
			}
		}
	}

	public void PlayButton()
	{
		MenuUI.SetActive(value: false);
		LevelSelectionUI.SetActive(value: true);
		Invoke("OpenLSPanel", 0.01f);
		_ads_manager.Instance.__HideAllBanners();
	}

	private void OpenLSPanel()
	{
		if (PlayerPrefs.GetInt("Level60") == 1)
		{
			LevelSelection.instance.Panel(4);
		}
		else if (PlayerPrefs.GetInt("Level45") == 1)
		{
			LevelSelection.instance.Panel(3);
		}
		else if (PlayerPrefs.GetInt("Level30") == 1)
		{
			LevelSelection.instance.Panel(2);
		}
		else if (PlayerPrefs.GetInt("Level15") == 1)
		{
			LevelSelection.instance.Panel(1);
		}
		else
		{
			LevelSelection.instance.Panel(0);
		}
	}

	public void LevelSelectionBackButton()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			remove_Ads_dialogs_fun();
		}
		MenuUI.SetActive(value: true);
		LevelSelectionUI.SetActive(value: false);
		_ads_manager.Instance.__HideAllBanners();
		_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
	}

	public void GotoLSFromGS()
	{
		GunSelectionUi.SetActive(value: false);
		LevelSelectionUI.SetActive(value: true);
		Invoke("OpenLSPanel", 0.01f);
	}

	public void ExitButton()
	{
		ExitUi.SetActive(value: true);
		try
		{
			_ads_manager.Instance.__HideAllBanners();
			_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
		}
		catch (Exception)
		{
		}
	}

	public void ExitNo()
	{
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			remove_Ads_dialogs_fun();
		}
		ExitUi.SetActive(value: false);
		_ads_manager.Instance.__HideAllBanners();
		_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
	}

	public void ExitYes()
	{
		Application.Quit();
	}

	public void sound()
	{
		isSound = !isSound;
		soundButton.GetComponent<Image>().sprite = ((!isSound) ? soundOnOff[1] : soundOnOff[0]);
		Mixer.SetFloat("sound", (!isSound) ? (-80) : 0);
		if (isSound)
		{
			AudioListener.pause = false;
		}
		else
		{
			AudioListener.pause = true;
		}
	}

	public void music()
	{
		isMusic = !isMusic;
		musicButton.GetComponent<Image>().sprite = ((!isMusic) ? soundOnOff[1] : soundOnOff[0]);
		Mixer.SetFloat("music", (!isMusic) ? (-80) : 0);
		if (isMusic)
		{
			AudioListener.pause = false;
		}
		else
		{
			AudioListener.pause = true;
		}
	}

	public void SettingPanel(bool setting)
	{
		settingPanel.SetActive(setting);
		if (!setting)
		{
			if (PlayerPrefs.GetInt("RemoveAds") == 0)
			{
				noads_btn.SetActive(value: true);
				remove_Ads_dialogs_fun();
			}
			_ads_manager.Instance.__HideAllBanners();
			_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
		}
		else
		{
			if (PlayerPrefs.GetInt("RemoveAds") == 0)
			{
				noads_btn.SetActive(value: false);
			}
			_ads_manager.Instance.__HideAllBanners();
			_ads_manager.Instance._ShowAdmobMediumRectangleBannerAtTopRight();
		}
	}

	public void rateus()
	{
		Application.OpenURL("https://play.google.com/store/apps/details?id=com.gzl.stickman.adventure.game");
	}

	public void Privacy_link()
	{
		Application.OpenURL("https://www.theknightzpvt.com/home/privacypolicy");
	}

	public void OpenShop()
	{
		ShopUi.SetActive(value: true);
	}

	public void CloseShop()
	{
		ShopUi.SetActive(value: false);
		InGameUI.isGuideToStore = false;
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			remove_Ads_dialogs_fun();
		}
	}

	public void GotoGunSelection()
	{
		GunSelectionUi.SetActive(value: true);
		MenuUI.SetActive(value: false);
	}

	public void BackFromGS()
	{
		GunSelectionUi.SetActive(value: false);
		if (PlayerPrefs.GetInt("RemoveAds") == 0)
		{
			remove_Ads_dialogs_fun();
		}
		MenuUI.SetActive(value: true);
	}

	public void BuyGun(int i)
	{
		if (PlayerPrefs.GetInt("TotalCoins") >= Gunprice[i])
		{
			if (i == 1)
			{
				InGameUI.isGuideToStore = false;
				GuideToStoreGS.SetActive(value: false);
				GuideToStoreMM.SetActive(value: false);
			}
			PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") - Gunprice[i]);
			Text totalCoinsText = instance.TotalCoinsText2;
			string text = PlayerPrefs.GetInt("TotalCoins").ToString();
			instance.TotalCoinsText.text = text;
			totalCoinsText.text = text;
			PlayerPrefs.SetInt("Gun" + i, 1);
			BuyBtn[i].SetActive(value: false);
			SelectBtn[i].SetActive(value: true);
			PriceGO[i].SetActive(value: false);
			SelectGun(i);
		}
		else
		{
			OpenShop();
		}
	}

	public void SelectGun(int i)
	{
		for (int j = 0; j < 5; j++)
		{
			Selected[j].SetActive(value: false);
			selected_boarders[j].SetActive(value: false);
		}
		Selected[i].SetActive(value: true);
		selected_boarders[i].SetActive(value: true);
		PlayerPrefs.SetInt("SelectedGun", i);
		for (int k = 0; k < 5; k++)
		{
			if (PlayerPrefs.GetInt("Gun" + k) == 1)
			{
				BuyBtn[k].SetActive(value: false);
				SelectBtn[k].SetActive(value: true);
				PriceGO[k].SetActive(value: false);
			}
		}
		SelectBtn[i].SetActive(value: false);
	}

	public void inAppDeal(int inAppIndex)
	{
		_ads_manager.Instance.inAppDeals(inAppIndex);
	}

	public void WatchVidReward()
	{
		videoNumber = 1;
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void Closeeee()
	{
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				1
			}
		});
	}

	public void WatchVidRewardOnPanal1()
	{
		videoNumber = 2;
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				2
			}
		});
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void WatchVidRewardOnPanal2()
	{
		videoNumber = 3;
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				2
			}
		});
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void WatchVidRewardOnPanal3()
	{
		videoNumber = 4;
		Analytics.CustomEvent("crossButton", new Dictionary<string, object>
		{
			{
				"button",
				2
			}
		});
		_ads_manager.Instance.admobRewarded_unity();
	}

	public void GetWelcomeBonus()
	{
		PlayerPrefs.SetInt("TotalCoins", PlayerPrefs.GetInt("TotalCoins") + 1000);
		Text totalCoinsText = instance.TotalCoinsText2;
		string text = PlayerPrefs.GetInt("TotalCoins").ToString();
		instance.TotalCoinsText.text = text;
		totalCoinsText.text = text;
		WelcomeBonus.transform.GetChild(0).gameObject.SetActive(value: true);
		GetRewardButton.interactable = false;
		Invoke("CloseWelcome", 2f);
	}

	private void CloseWelcome()
	{
		WelcomeBonus.SetActive(value: false);
		_ads_manager.Instance.__HideAllBanners();
		_ads_manager.Instance._ShowAdmobStandardBannerAtTopLeft();
	}

	public void removeads_btns_mm()
	{
		noads_btn.SetActive(value: false);
	}

	public void remove_Ads_dialogs_fun()
	{
		int num = UnityEngine.Random.Range(0, remove_Ads_dialogs.Length);
		noads_btn.transform.GetChild(0).GetComponent<Text>().text = remove_Ads_dialogs[num];
	}
}
