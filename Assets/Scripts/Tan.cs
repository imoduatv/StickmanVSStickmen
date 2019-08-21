using UnityEngine;

public class Tan : MonoBehaviour
{
	public Vector3 Distance;

	public Vector3 MovementFrequency;

	private Vector3 Moveposition;

	private Vector3 startPosition;

	private void Start()
	{
		startPosition = base.transform.position;
	}

	private void Update()
	{
		Moveposition.x = startPosition.x + Mathf.Tan(Time.timeSinceLevelLoad * MovementFrequency.x) * Distance.x;
		Moveposition.y = startPosition.y + Mathf.Tan(Time.timeSinceLevelLoad * MovementFrequency.y) * Distance.y;
		Moveposition.z = startPosition.z + Mathf.Tan(Time.timeSinceLevelLoad * MovementFrequency.z) * Distance.z;
		base.transform.position = new Vector3(Moveposition.x, Moveposition.y, Moveposition.z);
	}
}
