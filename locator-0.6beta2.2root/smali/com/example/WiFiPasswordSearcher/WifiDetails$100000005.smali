.class Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;
.super Ljava/lang/Object;
.source "WifiDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WifiDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

.field private final val$sText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/String;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;->val$sText:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;)Lcom/example/WiFiPasswordSearcher/WifiDetails;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

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
    .line 291
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000009(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000005;->val$sText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
