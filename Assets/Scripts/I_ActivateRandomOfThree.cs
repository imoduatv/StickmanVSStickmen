using UnityEngine;

public class I_ActivateRandomOfThree : MonoBehaviour
{
	public GameObject obj_1;

	public GameObject obj_2;

	public GameObject obj_3;

	public float timeDealy;

	private void Awake()
	{
		obj_1.SetActive(value: false);
		obj_2.SetActive(value: false);
		obj_3.SetActive(value: false);
	}

	private void Start()
	{
	}

	private void OnEnable()
	{
		Invoke("ActivateRandom", timeDealy);
	}

	private void ActivateRandom()
	{
		switch (UnityEngine.Random.Range(1, 4))
		{
		case 1:
			obj_1.SetActive(value: true);
			obj_2.SetActive(value: false);
			obj_3.SetActive(value: false);
			break;
		case 2:
			obj_1.SetActive(value: false);
			obj_2.SetActive(value: true);
			obj_3.SetActive(value: false);
			break;
		case 3:
			obj_1.SetActive(value: false);
			obj_2.SetActive(value: false);
			obj_3.SetActive(value: true);
			break;
		default:
			obj_1.SetActive(value: true);
			obj_2.SetActive(value: false);
			obj_3.SetActive(value: false);
			break;
		}
	}
}
