using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class LevelComplete : MonoBehaviour
{
	private GameManager gameManager;

	[SerializeField]
	private Text TotalShots;

	[SerializeField]
	private Text ShotsFired;

	private int ThisLevelScore;

	private string ThisLevelName;

	private void OnEnable()
	{
		ThisLevelName = SceneManager.GetActiveScene().name + SceneManager.GetActiveScene().buildIndex;
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
	}

	private void Start()
	{
		TotalShots.text = gameManager.totalshot.ToString();
	}
}
