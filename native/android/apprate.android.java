import android.app.AlertDialog;
import android.content.DialogInterface;

class AppRateNative {

	private AppRate apprate;
	private AlertDialog.Builder builder;
	
	public AppRateNative() {
		apprate = new AppRate(BBAndroidGame.AndroidGame().GetActivity());
		apprate.setOnClickListener(new DialogInterface.OnClickListener() {
			public void onClick(DialogInterface dialog, int which) {
			}
		});
	}
	
	public void setMinDaysUntilPrompt(int days) {
		apprate.setMinDaysUntilPrompt(days);
	}
	
	public void setMinLaunchesUntilPrompt(int launches) {
		apprate.setMinLaunchesUntilPrompt(launches);
	}
	
	public void setMessage(String message) {
		if (builder == null) {
			AlertDialog.Builder builder = new AlertDialog.Builder(BBAndroidGame.AndroidGame().GetActivity());
		}
		builder.setMessage(message);
		apprate.setCustomDialog(builder);
	}
	
	public void setTitle(String title) {
		if (builder == null) {
			AlertDialog.Builder builder = new AlertDialog.Builder(BBAndroidGame.AndroidGame().GetActivity());
		}
		builder.setTitle(title);
		apprate.setCustomDialog(builder);
	}
	
	public void setPositiveButton(String title) {
		if (builder == null) {
			AlertDialog.Builder builder = new AlertDialog.Builder(BBAndroidGame.AndroidGame().GetActivity());
		}
		builder.setPositiveButton(title, null);
		apprate.setCustomDialog(builder);
	}
	
	public void setNegativeButton(String title) {
		if (builder == null) {
			AlertDialog.Builder builder = new AlertDialog.Builder(BBAndroidGame.AndroidGame().GetActivity());
		}
		builder.setNegativeButton(title, null);
		apprate.setCustomDialog(builder);
	}
	
	public void setNeutralButton(String title) {
		if (builder == null) {
			AlertDialog.Builder builder = new AlertDialog.Builder(BBAndroidGame.AndroidGame().GetActivity());
		}
		builder.setNeutralButton(title, null);
		apprate.setCustomDialog(builder);
	}
	
	public void init() {
        BBAndroidGame.AndroidGame().GetActivity().runOnUiThread(new Runnable() {
            public void run() {
				apprate.init();
            }
        });
	}

}