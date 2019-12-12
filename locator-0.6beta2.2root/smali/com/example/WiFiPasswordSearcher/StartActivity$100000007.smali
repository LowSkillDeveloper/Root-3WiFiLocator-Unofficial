.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;)Lcom/example/WiFiPasswordSearcher/StartActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

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
    .line 237
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "No API keys received."

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v2, v4

    .line 238
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
