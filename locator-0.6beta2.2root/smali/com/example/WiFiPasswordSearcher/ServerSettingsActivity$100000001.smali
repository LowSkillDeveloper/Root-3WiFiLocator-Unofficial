.class Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;
.super Ljava/lang/Object;
.source "ServerSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;)Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    move-object v0, p0

    move-object v1, p1

    const-string v8, ""

    move-object v3, v8

    .line 68
    const-string v8, ""

    move-object v4, v8

    .line 69
    const-string v8, ""

    move-object v5, v8

    .line 70
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, v8

    .line 72
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-static {v8}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->access$L1000000(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    .line 73
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-static {v8}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->access$L1000001(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 74
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-static {v8}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->access$L1000002(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/EditText;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-interface {v8}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    .line 75
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-static {v8}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->access$L1000003(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)Landroid/widget/Switch;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Switch;->isChecked()Z

    move-result v8

    new-instance v9, Ljava/lang/Boolean;

    move v11, v8

    move-object v12, v9

    move-object v8, v12

    move v9, v11

    move-object v10, v12

    move v11, v9

    move-object v12, v10

    move-object v9, v12

    move v10, v11

    invoke-direct {v9, v10}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v6, v8

    .line 78
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "SERVER_LOGIN"

    move-object v10, v3

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 79
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "SERVER_PASSWORD"

    move-object v10, v4

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 80
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "SERVER_URI"

    move-object v10, v5

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 81
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v9, "CHECK_UPDATES"

    move-object v10, v6

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    invoke-interface {v8, v9, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 82
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->mSettings:Lcom/example/WiFiPasswordSearcher/Settings;

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v8

    .line 84
    move-object v8, v0

    iget-object v8, v8, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-virtual {v8}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->finish()V

    return-void
.end method
