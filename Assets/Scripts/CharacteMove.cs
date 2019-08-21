using UnityEngine;

public class CharacteMove : MonoBehaviour
{
	public Vector3 RaycastDirection;

	public float Range;

	public bool IsRight;

	public bool move;

	public float MoveSpeed = 5f;

	public float GroundRange = 1f;

	public Animator Thisanimator;

	public Vector3 GroundCheck2;

	public bool walkableCharacter;

	private void OnEnable()
	{
		if (walkableCharacter)
		{
			if (IsRight)
			{
				Thisanimator.SetBool("ISRight", value: true);
				RaycastDirection = new Vector3(1f * Range, 0f, 0f);
				Vector3 groundCheck = GroundCheck2;
				groundCheck.x = 1f;
				groundCheck.y = -1f;
				GroundCheck2 = groundCheck;
				base.transform.GetChild(0).GetChild(0).localEulerAngles = new Vector3(0f, 0f, 0f);
			}
			else
			{
				Thisanimator.SetBool("ISRight", value: false);
				RaycastDirection = new Vector3(-1f * Range, 0f, 0f);
				Vector3 groundCheck2 = GroundCheck2;
				groundCheck2.x = -1f;
				groundCheck2.y = -1f;
				GroundCheck2 = groundCheck2;
				base.transform.GetChild(0).GetChild(0).localEulerAngles = new Vector3(0f, 180f, 0f);
			}
		}
	}

	private void Start()
	{
		Thisanimator.SetBool("stand", !walkableCharacter);
	}

	private void Update()
	{
		if (walkableCharacter && move)
		{
			if (IsRight)
			{
				RaycastDirection = new Vector3(1f * Range, 0f, 0f);
				base.transform.position += Vector3.right * Time.deltaTime * MoveSpeed;
				base.transform.GetChild(0).GetChild(0).localEulerAngles = new Vector3(0f, 0f, 0f);
			}
			else
			{
				RaycastDirection = new Vector3(-1f * Range, 0f, 0f);
				base.transform.position += -Vector3.right * Time.deltaTime * MoveSpeed;
				base.transform.GetChild(0).GetChild(0).localEulerAngles = new Vector3(0f, 180f, 0f);
			}
		}
	}

	private void FixedUpdate()
	{
		if (walkableCharacter)
		{
			RaycastHit2D hit = Physics2D.Raycast(base.transform.position, -Vector3.up, 5f);
			RaycastHit2D hit2 = Physics2D.Raycast(base.transform.position, GroundCheck2, 5f);
			if (!hit)
			{
				move = false;
				base.transform.GetChild(0).GetComponent<Animator>().enabled = false;
				base.transform.GetChild(0).GetComponent<CapsuleCollider>().enabled = false;
			}
			else
			{
				move = true;
			}
			if (move && !hit2)
			{
				IsRight = !IsRight;
				Thisanimator.SetBool("ISRight", IsRight);
				Vector3 groundCheck = GroundCheck2;
				groundCheck.x *= -1f;
				groundCheck.y *= 1f;
				GroundCheck2 = groundCheck;
			}
		}
	}

	private void OnTriggerEnter2D(Collider2D incoming)
	{
		if (incoming.name.Contains("Death"))
		{
			UnityEngine.Object.Destroy(base.gameObject);
		}
	}
}
