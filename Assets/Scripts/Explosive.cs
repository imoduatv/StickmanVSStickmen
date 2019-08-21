using UnityEngine;
using UnityEngine.SceneManagement;

public class Explosive : MonoBehaviour
{
	public GameObject Explosioneffect;

	public GameObject stickmans;

	public GameObject BloodEffect;

	public GameObject Balls;

	private SoundController soundcontrol;

	private void Start()
	{
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
	}

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Stickman"))
		{
			stickmans = incoming.gameObject;
		}
		if (incoming.name.Contains("ClayBall"))
		{
			Balls = incoming.gameObject;
		}
	}

	private void OnTriggerExit2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Stickman"))
		{
			stickmans = null;
		}
		if (incoming.name.Contains("ClayBall"))
		{
			Balls = null;
		}
	}

	public void Explode()
	{
		if (SceneManager.GetActiveScene().buildIndex - 2 == 3)
		{
			UnityEngine.Object.Destroy(InGameUI.instance.help);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 18)
		{
			InGameUI.instance.Hint.transform.GetChild(0).GetChild(0).gameObject.SetActive(value: false);
		}
		if (stickmans != null)
		{
			Object.Instantiate(Explosioneffect, base.transform.position, Quaternion.identity);
			GameObject obj = UnityEngine.Object.Instantiate(BloodEffect, stickmans.transform.position, Quaternion.identity);
			UnityEngine.Object.Destroy(obj, 2f);
			UnityEngine.Object.Destroy(stickmans.transform.parent.parent.gameObject);
			Object.FindObjectOfType<GameManager>().StickManCount--;
			if (UnityEngine.Object.FindObjectOfType<GameManager>().StickManCount <= 0)
			{
				GameEvents.OnGameComplete(null, null);
			}
			UnityEngine.Object.Destroy(base.gameObject);
		}
		else
		{
			UnityEngine.Object.Destroy(base.gameObject);
			Object.Instantiate(Explosioneffect, base.transform.position, Quaternion.identity);
		}
		if (Balls != null)
		{
			UnityEngine.Object.Destroy(base.gameObject);
			Balls.GetComponent<StickManObstacle>().thisthrow = true;
		}
	}
}
