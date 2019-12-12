.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;
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
    name = "100000008"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

.field private final val$errorDesc:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;->val$errorDesc:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;)Lcom/example/WiFiPasswordSearcher/StartActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

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
    .line 265
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000008;->val$errorDesc:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v2, v4

    .line 266
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
