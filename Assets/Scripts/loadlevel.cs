using UnityEngine;
using UnityEngine.SceneManagement;

public class loadlevel : MonoBehaviour
{
	private void LoadNextLevel()
	{
		if (SceneManager.GetActiveScene().name.Equals("2_Ads Initialization") || SceneManager.GetActiveScene().name.Equals("1_SplashAnimation"))
		{
			SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
		}
	}
}
