.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000012"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

.field private final val$errorDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->val$errorDesc:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 940
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->val$errorDesc:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v2, v4

    .line 941
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 942
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000012;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$L1000012(Lcom/example/WiFiPasswordSearcher/MyActivity;)Landroid/widget/Button;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method
