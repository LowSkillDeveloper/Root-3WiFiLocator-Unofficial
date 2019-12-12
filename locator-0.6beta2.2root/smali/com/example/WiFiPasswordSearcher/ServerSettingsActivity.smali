.class public Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;
.super Landroid/app/Activity;
.source "ServerSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;,
        Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;
    }
.end annotation


# instance fields
.field btnCancel:Landroid/widget/Button;

.field private btnCloseOnClick:Landroid/view/View$OnClickListener;

.field btnSave:Landroid/widget/Button;

.field private btnSaveOnClick:Landroid/view/View$OnClickListener;

.field mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

.field private swCheckUpd:Landroid/widget/Switch;

.field private txtServerLogin:Landroid/widget/EditText;

.field private txtServerPassword:Landroid/widget/EditText;

.field private txtServerUri:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 86
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerLogin:Landroid/widget/EditText;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerPassword:Landroid/widget/EditText;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/EditText;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerUri:Landroid/widget/EditText;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Switch;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->swCheckUpd:Landroid/widget/Switch;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnCancel:Landroid/widget/Button;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/Button;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnSave:Landroid/widget/Button;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnCloseOnClick:Landroid/view/View$OnClickListener;

    move-object v2, v0

    new-instance v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;-><init>(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)V

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnSaveOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerLogin:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerPassword:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000002(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerUri:Landroid/widget/EditText;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000003(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/Switch;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->swCheckUpd:Landroid/widget/Switch;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;Landroid/widget/EditText;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerLogin:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;Landroid/widget/EditText;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerPassword:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000002(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;Landroid/widget/EditText;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerUri:Landroid/widget/EditText;

    return-void
.end method

.method static synthetic access$S1000003(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;Landroid/widget/Switch;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->swCheckUpd:Landroid/widget/Switch;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object v0, p0

    move-object v1, p1

    move-object v8, v0

    const-string v9, "com.aide.ui"

    invoke-static {v8, v9}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    move-object v8, v0

    move-object v9, v1

    invoke-super {v8, v9}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    move-object v8, v0

    const v9, 0x7f030006

    invoke-virtual {v8, v9}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->setContentView(I)V

    .line 31
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07001c

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerLogin:Landroid/widget/EditText;

    .line 32
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f07001e

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerPassword:Landroid/widget/EditText;

    .line 33
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070020

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerUri:Landroid/widget/EditText;

    .line 34
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070021

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Switch;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->swCheckUpd:Landroid/widget/Switch;

    .line 36
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070022

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnCancel:Landroid/widget/Button;

    .line 37
    move-object v8, v0

    move-object v9, v0

    const v10, 0x7f070023

    invoke-virtual {v9, v10}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnSave:Landroid/widget/Button;

    .line 39
    move-object v8, v0

    new-instance v9, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move-object v11, v0

    invoke-virtual {v11}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    iput-object v9, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    .line 40
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/Settings;->Reload()V

    .line 42
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "SERVER_LOGIN"

    const-string v10, ""

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 43
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "SERVER_PASSWORD"

    const-string v10, "antichat"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 44
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "SERVER_URI"

    const-string v10, "http://3wifi.stascorp.com"

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 45
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    const-string v9, "CHECK_UPDATES"

    const/4 v10, 0x1

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    new-instance v9, Ljava/lang/Boolean;

    move v12, v8

    move-object v13, v9

    move-object v8, v13

    move v9, v12

    move-object v10, v13

    move v12, v9

    move-object v13, v10

    move-object v9, v13

    move v10, v12

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, v8

    .line 47
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerLogin:Landroid/widget/EditText;

    move-object v9, v3

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 48
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerPassword:Landroid/widget/EditText;

    move-object v9, v4

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 49
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->txtServerUri:Landroid/widget/EditText;

    move-object v9, v5

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 50
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->swCheckUpd:Landroid/widget/Switch;

    move-object v9, v6

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/Switch;->setChecked(Z)V

    .line 52
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnCancel:Landroid/widget/Button;

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnCloseOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnSave:Landroid/widget/Button;

    move-object v9, v0

    iget-object v9, v9, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->btnSaveOnClick:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
