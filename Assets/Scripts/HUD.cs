using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;

public class HUD : MonoBehaviour
{
	public Slider MoveSlider;

	public GameManager gameManager;

	public static HUD instance;

	public bool canSetCursorPosition = true;

	private void Awake()
	{
		if (SceneManager.GetActiveScene().buildIndex - 2 == 6)
		{
			canSetCursorPosition = false;
		}
	}

	private void OnEnable()
	{
		gameManager = UnityEngine.Object.FindObjectOfType<GameManager>();
	}

	private void OnDiable()
	{
	}

	private void Start()
	{
		instance = this;
		if (!GameManager.instance.ChangeAngleLevel)
		{
		}
	}

	private void Update()
	{
		InputController.Vertical = MoveSlider.value;
		RaycastHit hitInfo;
		if (!Input.GetMouseButton(0) || UnityEngine.Input.touchCount > 1 || !Physics.Raycast(Camera.main.ScreenPointToRay(UnityEngine.Input.mousePosition), out hitInfo) || !hitInfo.collider.name.Contains("Shoot") || InGameUI.instance.PanelsEnabled)
		{
			return;
		}
		if (canSetCursorPosition)
		{
			gameManager.CursorPos = Camera.main.ScreenToWorldPoint(UnityEngine.Input.mousePosition) + new Vector3(0f, 0f, 10f);
		}
		if (SceneManager.GetActiveScene().buildIndex - 2 == 1)
		{
			InGameUI.instance.ShootBtn.SetActive(value: true);
			if (InGameUI.instance.shoothelphand != null)
			{
				InGameUI.instance.shoothelphand.GetComponent<Animator>().SetTrigger("move");
			}
			if (InGameUI.instance.help != null)
			{
				InGameUI.instance.help.transform.GetChild(10).GetChild(0).gameObject.SetActive(value: false);
				InGameUI.instance.help.transform.GetChild(10).GetChild(1).gameObject.SetActive(value: true);
			}
		}
	}
}
