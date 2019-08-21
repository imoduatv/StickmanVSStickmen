using UnityEngine;
using UnityEngine.SceneManagement;

public class ParentBomb : MonoBehaviour
{
	public GameObject ExplosionEffect;

	public GameObject StickMan;

	public GameObject Boxes;

	public bool starttime;

	private float TimeToExplode = 3f;

	public bool explode;

	private SoundController soundcontrol;

	private void Start()
	{
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
	}

	private void Update()
	{
		if (starttime)
		{
			TimeToExplode -= Time.deltaTime;
		}
		if (TimeToExplode <= 0f)
		{
			explode = true;
			Explode();
		}
	}

	public void Explode()
	{
		soundcontrol.ExplosionSound.Play();
		MonoBehaviour.print("Explode");
		if (StickMan != null)
		{
			UnityEngine.Debug.Log("-----------------------------");
			Object.Instantiate(ExplosionEffect, base.transform.position, Quaternion.identity);
			UnityEngine.Object.Destroy(StickMan.transform.parent.parent.gameObject);
			Object.FindObjectOfType<GameManager>().StickManCount--;
			if (UnityEngine.Object.FindObjectOfType<GameManager>().StickManCount <= 0)
			{
				GameEvents.OnGameComplete(null, null);
				UnityEngine.Debug.Log("dead");
			}
			UnityEngine.Object.Destroy(base.gameObject);
		}
		else
		{
			UnityEngine.Object.Destroy(base.gameObject);
			Object.Instantiate(ExplosionEffect, base.transform.GetChild(0).position, Quaternion.identity);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 6 || SceneManager.GetActiveScene().buildIndex - 2 == 25)
		{
			InGameUI.instance.Hint.SetActive(value: false);
		}
	}
}
