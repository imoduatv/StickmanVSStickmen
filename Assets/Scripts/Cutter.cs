using UnityEngine;

public class Cutter : MonoBehaviour
{
	public bool Charge;

	public Vector3 forcedirection;

	private Rigidbody2D thisrigidbody;

	public float force;

	public GameObject bloodeffect;

	private SoundController soundcontrol;

	private GameManager gameManager;

	private void Start()
	{
		Charge = false;
		thisrigidbody = GetComponent<Rigidbody2D>();
		soundcontrol = UnityEngine.Object.FindObjectOfType<SoundController>();
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
	}

	private void Update()
	{
		if (Charge)
		{
			thisrigidbody.AddForce(forcedirection * force);
		}
	}

	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (incoming.collider.name.Contains("Stickman"))
		{
			gameManager.StickManCount--;
			if (UnityEngine.Object.FindObjectOfType<GameManager>().StickManCount <= 0)
			{
				GameEvents.OnGameComplete(null, null);
				UnityEngine.Debug.Log("dead");
			}
			UnityEngine.Object.Destroy(incoming.transform.parent.parent.gameObject, 3f);
			incoming.transform.parent.parent.gameObject.GetComponent<CharacteMove>().walkableCharacter = false;
			incoming.transform.parent.gameObject.GetComponent<Animator>().SetTrigger("dead");
			UnityEngine.Object.Destroy(incoming.collider.gameObject);
			Object.Instantiate(bloodeffect, base.transform.position, Quaternion.identity);
			soundcontrol.StickmanhitSound.Play();
		}
	}
}
