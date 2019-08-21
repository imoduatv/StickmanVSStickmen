using UnityEngine;

public class WoodScript : MonoBehaviour
{
	public Sprite[] BrokenSprite;

	public int condition;

	public bool destroythis;

	private float currentFireTime;

	private void Start()
	{
		destroythis = false;
		condition = 0;
	}

	private void OnCollisionEnter2D(Collision2D incoming)
	{
		if (condition >= BrokenSprite.Length - 2)
		{
			destroythis = true;
		}
		if (incoming.collider.name.Contains("Laser") && condition <= BrokenSprite.Length)
		{
			GetComponent<SpriteRenderer>().sprite = BrokenSprite[condition];
			condition++;
		}
	}
}
