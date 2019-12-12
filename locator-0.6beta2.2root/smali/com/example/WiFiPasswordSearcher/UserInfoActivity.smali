.class public Lcom/example/WiFiPasswordSearcher/UserInfoActivity;
.super Landroid/app/Activity;
.source "UserInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;
    }
.end annotation


# static fields
.field public static SERVER_URI:Ljava/lang/String;


# instance fields
.field private info:Ljava/lang/String;

.field public txtGroup:Landroid/widget/TextView;

.field public txtLogin:Landroid/widget/TextView;

.field public txtRegDate:Landroid/widget/TextView;


# direct methods
.method static final constructor <clinit>()V
    .locals 3

    const-string v2, ""

    sput-object v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->SERVER_URI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 181
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/app/Activity;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtLogin:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtRegDate:Landroid/widget/TextView;

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtGroup:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public btnRevertOnClick(Landroid/view/View;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 170
    move-object v0, p0

    move-object v1, p1

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    const-string v7, "wpspin"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 172
    new-instance v6, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 173
    move-object v6, v3

    const/4 v7, 0x1

    new-instance v8, Ljava/lang/Boolean;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v6, v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInit(Ljava/lang/Boolean;)V

    .line 174
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtRegDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v7

    move-object v8, v3

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetDate()Ljava/util/Date;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtGroup:Landroid/widget/TextView;

    move-object v7, v3

    move-object v8, v3

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/example/WiFiPasswordSearcher/AppVersion;->readableFileSize(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 176
    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInternal()Ljava/lang/Boolean;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Landroid/view/View;->setEnabled(Z)V

    .line 177
    move-object v6, v0

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "Reverted to initial state"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    move-object v4, v6

    .line 179
    move-object v6, v4

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    .line 176
    :cond_1
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public btnUpdateOnClick(Landroid/view/View;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    const-string v4, "wpspin"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 164
    new-instance v3, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;-><init>(Lcom/example/WiFiPasswordSearcher/UserInfoActivity;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity$AsyncWpsUpdater;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v3

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v17, v2

    const-string v18, "com.aide.ui"

    invoke-static/range {v17 .. v18}, Ladrt/ADRTLogCatReader;->onContext(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    move-object/from16 v17, v2

    move-object/from16 v18, v3

    invoke-super/range {v17 .. v18}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 37
    move-object/from16 v17, v2

    const v18, 0x7f030009

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->setContentView(I)V

    .line 39
    new-instance v17, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    move-object/from16 v5, v17

    .line 40
    move-object/from16 v17, v5

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->AppSettings:Landroid/content/SharedPreferences;

    move-object/from16 v17, v0

    const-string v18, "SERVER_URI"

    const-string v19, "http://3wifi.stascorp.com"

    invoke-interface/range {v17 .. v19}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    sput-object v17, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->SERVER_URI:Ljava/lang/String;

    .line 43
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    :try_start_0
    invoke-virtual/range {v18 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v18

    const-string v19, "showInfo"

    invoke-virtual/range {v18 .. v19}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    const v19, 0x7f070028

    invoke-virtual/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtLogin:Landroid/widget/TextView;

    .line 50
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    const v19, 0x7f070033

    invoke-virtual/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtRegDate:Landroid/widget/TextView;

    .line 51
    move-object/from16 v17, v2

    move-object/from16 v18, v2

    const v19, 0x7f070035

    invoke-virtual/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtGroup:Landroid/widget/TextView;

    .line 53
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "wpspin"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 58
    new-instance v17, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v17

    .line 59
    move-object/from16 v17, v9

    const/16 v18, 0x0

    new-instance v19, Ljava/lang/Boolean;

    move/from16 v22, v18

    move-object/from16 v23, v19

    move-object/from16 v18, v23

    move/from16 v19, v22

    move-object/from16 v20, v23

    move/from16 v22, v19

    move-object/from16 v23, v20

    move-object/from16 v19, v23

    move/from16 v20, v22

    invoke-direct/range {v19 .. v20}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInit(Ljava/lang/Boolean;)V

    .line 61
    move-object/from16 v17, v2

    const v18, 0x7f070036

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v10, v17

    .line 62
    move-object/from16 v17, v10

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 63
    move-object/from16 v17, v2

    const v18, 0x7f070037

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Button;

    move-object/from16 v11, v17

    .line 64
    move-object/from16 v17, v11

    move-object/from16 v18, v9

    invoke-virtual/range {v18 .. v18}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionInternal()Ljava/lang/Boolean;

    move-result-object v18

    check-cast v18, Ljava/lang/Boolean;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v18

    if-eqz v18, :cond_0

    const/16 v18, 0x0

    :goto_1
    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setEnabled(Z)V

    .line 66
    move-object/from16 v17, v2

    const v18, 0x7f070032

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v12, v17

    .line 67
    move-object/from16 v17, v2

    const v18, 0x7f070034

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    move-object/from16 v13, v17

    .line 69
    const-string v17, "WPS PIN Companion"

    move-object/from16 v6, v17

    .line 70
    move-object/from16 v17, v12

    const-string v18, "Last Updated"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetDate()Ljava/util/Date;

    move-result-object v17

    move-object/from16 v8, v17

    .line 72
    move-object/from16 v17, v13

    const-string v18, "File Size"

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/AppVersion;->wpsCompanionGetSize()J

    move-result-wide v17

    move-wide/from16 v14, v17

    .line 74
    move-object/from16 v17, v9

    move-wide/from16 v18, v14

    invoke-virtual/range {v17 .. v19}, Lcom/example/WiFiPasswordSearcher/AppVersion;->readableFileSize(J)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    .line 95
    :goto_2
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtLogin:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v18, v6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtRegDate:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v18

    move-object/from16 v19, v8

    invoke-virtual/range {v18 .. v19}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    move-object/from16 v17, v2

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->txtGroup:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v18, v7

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 43
    :catch_0
    move-exception v17

    move-object/from16 v6, v17

    .line 46
    move-object/from16 v17, v2

    const-string v18, "user"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->info:Ljava/lang/String;

    goto/16 :goto_0

    .line 64
    :cond_0
    const/16 v18, 0x1

    goto/16 :goto_1

    .line 78
    :cond_1
    new-instance v17, Lcom/example/WiFiPasswordSearcher/UserManager;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Lcom/example/WiFiPasswordSearcher/UserManager;-><init>(Landroid/content/Context;)V

    move-object/from16 v9, v17

    .line 79
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/UserManager;->getFromSettings()V

    .line 81
    move-object/from16 v17, v2

    const v18, 0x7f070036

    invoke-virtual/range {v17 .. v18}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v10, v17

    .line 82
    move-object/from16 v17, v10

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    new-instance v17, Ljava/text/SimpleDateFormat;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    move-object/from16 v19, v2

    invoke-virtual/range {v19 .. v19}, Lcom/example/WiFiPasswordSearcher/UserInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f050003

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v19

    sget-object v20, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct/range {v18 .. v20}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    move-object/from16 v11, v17

    .line 86
    move-object/from16 v17, v11

    move-object/from16 v18, v9

    :try_start_1
    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserManager;->RegDate:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v17

    move-object/from16 v8, v17

    .line 91
    :goto_3
    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/UserManager;->NickName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    .line 92
    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/example/WiFiPasswordSearcher/UserManager;->GetGroup()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v7, v17

    goto/16 :goto_2

    .line 86
    :catch_1
    move-exception v17

    move-object/from16 v12, v17

    .line 88
    new-instance v17, Ljava/util/Date;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    invoke-direct/range {v18 .. v18}, Ljava/util/Date;-><init>()V

    move-object/from16 v8, v17

    goto :goto_3
.end method
