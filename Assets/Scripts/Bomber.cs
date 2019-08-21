using UnityEngine;

public class Bomber : MonoBehaviour
{
	public Rigidbody2D Bombs;

	public Transform spawnPt;

	public bool shoot;

	private void Start()
	{
	}

	private void ShootTutorial()
	{
		shoot = true;
		GameManager.instance.stopTimer = false;
		UnityEngine.Object.Destroy(InGameUI.instance.help);
	}

	private void Update()
	{
		if (shoot)
		{
			shoot = false;
			Rigidbody2D rigidbody2D = UnityEngine.Object.Instantiate(Bombs, spawnPt.position, spawnPt.rotation);
			rigidbody2D.GetComponent<ParentBomb>().starttime = true;
		}
	}
}
