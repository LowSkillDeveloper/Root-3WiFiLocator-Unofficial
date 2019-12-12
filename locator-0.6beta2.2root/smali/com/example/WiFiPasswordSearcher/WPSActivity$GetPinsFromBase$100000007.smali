.class Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;
.super Ljava/lang/Object;
.source "WPSActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;)Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$GetPinsFromBase;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 463
    move-object v0, p0

    sget-object v2, Lcom/example/WiFiPasswordSearcher/WPSActivity;->context:Landroid/content/Context;

    const-string v3, "Please enter credentials"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return-void
.end method
