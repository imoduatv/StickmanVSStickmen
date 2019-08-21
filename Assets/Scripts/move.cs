using UnityEngine;

public class move : MonoBehaviour
{
	public Vector3 RotationSpeed;

	private void Start()
	{
	}

	private void Update()
	{
		base.transform.Rotate(Time.deltaTime * RotationSpeed.x, Time.deltaTime * RotationSpeed.y, Time.deltaTime * RotationSpeed.z);
	}
}
