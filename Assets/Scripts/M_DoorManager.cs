using UnityEngine;

public class M_DoorManager : MonoBehaviour
{
	public OpenDoors door_open;

	private void Start()
	{
	}

	private void OnCollisionEnter2D(Collision2D col)
	{
		if (col.gameObject.name.Contains("Stone_Lev20"))
		{
			door_open.OpenDoor = true;
		}
	}
}
