.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003$100000002;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

.field private final val$dProccess:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;Landroid/app/ProgressDialog;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->val$dProccess:Landroid/app/ProgressDialog;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;)Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    move v9, v5

    move-object v10, v6

    move-object v5, v10

    move v6, v9

    move-object v7, v10

    move v9, v6

    move-object v10, v7

    move-object v6, v10

    move v7, v9

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    move-object v2, v5

    .line 113
    move-object v5, v0

    :try_start_0
    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    invoke-static {v6}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v6

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtLogin:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    invoke-static {v7}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v7

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/StartActivity;->edtPassword:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->access$1000014(Lcom/example/WiFiPasswordSearcher/StartActivity;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    new-instance v6, Ljava/lang/Boolean;

    move v9, v5

    move-object v10, v6

    move-object v5, v10

    move v6, v9

    move-object v7, v10

    move v9, v6

    move-object v10, v7

    move-object v6, v10

    move v7, v9

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v5

    .line 117
    :goto_0
    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/StartActivity;->access$L1000002(Lcom/example/WiFiPasswordSearcher/StartActivity;)Lcom/example/WiFiPasswordSearcher/UserManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/example/WiFiPasswordSearcher/UserManager;->getFromSettings()V

    .line 121
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v5

    new-instance v6, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003$100000002;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003$100000002;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;)V

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/StartActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000004$100000003;->val$dProccess:Landroid/app/ProgressDialog;

    invoke-virtual {v5}, Landroid/app/ProgressDialog;->dismiss()V

    return-void

    .line 113
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 115
    move-object v5, v3

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
