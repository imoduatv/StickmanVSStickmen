using UnityEngine;
using UnityEngine.SceneManagement;

public class StickManObstacle : MonoBehaviour
{
	public GameObject ParticleEffect;

	public bool thisthrow;

	private SoundController soundcontrol;

	private void Start()
	{
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
	}

	private void FixedUpdate()
	{
		GetComponent<Rigidbody2D>().gravityScale = 5f;
	}

	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (incoming.collider.name.Contains("Stickman"))
		{
			soundcontrol.StickmanhitSound.Play();
			UnityEngine.Object.Destroy(incoming.transform.parent.parent.gameObject);
			GameObject obj = UnityEngine.Object.Instantiate(ParticleEffect, incoming.transform.position, Quaternion.identity);
			UnityEngine.Object.Destroy(obj, 2f);
			Object.FindObjectOfType<GameManager>().StickManCount--;
			if (UnityEngine.Object.FindObjectOfType<GameManager>().StickManCount <= 0)
			{
				GameEvents.OnGameComplete(null, null);
			}
			if (SceneManager.GetActiveScene().buildIndex - 2 == 24)
			{
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(0).gameObject.SetActive(value: true);
				InGameUI.instance.Hint.transform.GetChild(0).GetChild(1).gameObject.SetActive(value: false);
			}
		}
	}

	private void Update()
	{
		if (thisthrow)
		{
			GetComponent<Rigidbody2D>().AddForce(Vector2.right * 100f, ForceMode2D.Impulse);
		}
	}

	public void Throw()
	{
	}
}
