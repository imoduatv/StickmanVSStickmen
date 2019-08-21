using UnityEngine;
using UnityEngine.SceneManagement;

public class Loading : MonoBehaviour
{
	private void Start()
	{
	}

	private void LoadLevel()
	{
		SceneManager.LoadScene(SceneManager.GetActiveScene().buildIndex + 1);
	}
}
