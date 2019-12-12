.class Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/SettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/SettingsActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;)Lcom/example/WiFiPasswordSearcher/SettingsActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 35
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move-wide/from16 v6, p4

    move-object/from16 v21, v4

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v9, v21

    .line 37
    move-wide/from16 v21, v6

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    packed-switch v21, :pswitch_data_0

    .line 72
    :goto_0
    return-void

    .line 40
    :pswitch_0
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    :try_start_0
    const-string v24, "com.example.WiFiPasswordSearcher.ServerSettingsActivity"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v10, v21

    .line 41
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v21, v0

    move-object/from16 v22, v10

    invoke-virtual/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 42
    goto :goto_0

    .line 40
    :catch_0
    move-exception v21

    move-object/from16 v11, v21

    new-instance v21, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v11

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 44
    :pswitch_1
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    :try_start_1
    const-string v24, "com.example.WiFiPasswordSearcher.UserInfoActivity"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v12, v21

    .line 45
    move-object/from16 v21, v12

    const-string v22, "showInfo"

    const-string v23, "wpspin"

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v21

    .line 46
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v21, v0

    move-object/from16 v22, v12

    invoke-virtual/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 47
    goto :goto_0

    .line 44
    :catch_1
    move-exception v21

    move-object/from16 v13, v21

    new-instance v21, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v13

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 49
    :pswitch_2
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    :try_start_2
    const-string v24, "com.example.WiFiPasswordSearcher.AboutActivity"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v14, v21

    .line 50
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v21, v0

    move-object/from16 v22, v14

    invoke-virtual/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 51
    goto/16 :goto_0

    .line 49
    :catch_2
    move-exception v21

    move-object/from16 v15, v21

    new-instance v21, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v15

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 53
    :pswitch_3
    new-instance v21, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object/from16 v16, v21

    .line 54
    move-object/from16 v21, v16

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v22

    const/16 v23, 0x1

    new-instance v24, Ljava/lang/Boolean;

    move/from16 v28, v23

    move-object/from16 v29, v24

    move-object/from16 v23, v29

    move/from16 v24, v28

    move-object/from16 v25, v29

    move/from16 v28, v24

    move-object/from16 v29, v25

    move-object/from16 v24, v29

    move/from16 v25, v28

    invoke-direct/range {v24 .. v25}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual/range {v21 .. v23}, Lcom/example/WiFiPasswordSearcher/AppVersion;->isActualyVersion(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v21

    check-cast v21, Ljava/lang/Boolean;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v21

    if-nez v21, :cond_0

    .line 56
    move-object/from16 v21, v16

    move-object/from16 v22, v2

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/AppVersion;->ShowUpdateDialog(Landroid/app/Activity;)V

    .line 58
    :cond_0
    goto/16 :goto_0

    .line 60
    :pswitch_4
    new-instance v21, Lcom/example/WiFiPasswordSearcher/Settings;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Lcom/example/WiFiPasswordSearcher/Settings;-><init>(Landroid/content/Context;)V

    move-object/from16 v17, v21

    .line 61
    move-object/from16 v21, v17

    invoke-virtual/range {v21 .. v21}, Lcom/example/WiFiPasswordSearcher/Settings;->Reload()V

    .line 62
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    const-string v22, "SERVER_LOGIN"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 63
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    const-string v22, "SERVER_PASSWORD"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 64
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    const-string v22, "READ_KEY"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 65
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    const-string v22, "WRITE_KEY"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 66
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    const-string v22, "KEYS_VALID"

    invoke-interface/range {v21 .. v22}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v21

    .line 67
    move-object/from16 v21, v17

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v21

    .line 69
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v2

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v23

    :try_start_3
    const-string v24, "com.example.WiFiPasswordSearcher.StartActivity"

    invoke-static/range {v24 .. v24}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v24

    invoke-direct/range {v22 .. v24}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v18, v21

    .line 70
    move-object/from16 v21, v18

    const v22, 0x14008000

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v21

    .line 71
    move-object/from16 v21, v2

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/example/WiFiPasswordSearcher/SettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/SettingsActivity;

    move-object/from16 v21, v0

    move-object/from16 v22, v18

    invoke-virtual/range {v21 .. v22}, Lcom/example/WiFiPasswordSearcher/SettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 72
    goto/16 :goto_0

    .line 69
    :catch_3
    move-exception v21

    move-object/from16 v19, v21

    new-instance v21, Ljava/lang/NoClassDefFoundError;

    move-object/from16 v28, v21

    move-object/from16 v21, v28

    move-object/from16 v22, v28

    move-object/from16 v23, v19

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v21

    .line 37
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
