.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;

.field private final val$Version:Lcom/example/WiFiPasswordSearcher/AppVersion;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;Lcom/example/WiFiPasswordSearcher/AppVersion;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;->val$Version:Lcom/example/WiFiPasswordSearcher/AppVersion;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;)Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 85
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;->val$Version:Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;

    invoke-static {v3}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/example/WiFiPasswordSearcher/AppVersion;->ShowUpdateDialog(Landroid/app/Activity;)V

    return-void
.end method
