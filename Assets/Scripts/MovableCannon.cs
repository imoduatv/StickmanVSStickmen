using UnityEngine;

public class MovableCannon : MonoBehaviour
{
	public Transform EndPoint1;

	public Transform EndPoint2;

	public Transform CannonObject;

	public float CannonMoveLimit;

	[Range(0.16f, 0.8f)]
	public float timeBetweenBirdSpawn;

	public GameManager gameManager;

	private void Start()
	{
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
	}

	private void Update()
	{
		float vertical = InputController.Vertical;
		Transform transform = CannonObject.transform;
		float x = vertical * CannonMoveLimit;
		Vector3 localPosition = CannonObject.transform.localPosition;
		float y = localPosition.y;
		Vector3 localPosition2 = CannonObject.transform.localPosition;
		transform.localPosition = new Vector3(x, y, localPosition2.z);
	}
}
