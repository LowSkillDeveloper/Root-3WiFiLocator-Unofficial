.class Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;
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
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

.field private final val$Channel:I


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;->val$Channel:I

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;)Lcom/example/WiFiPasswordSearcher/WifiDetails;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 321
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000010(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Channel: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    move-object v4, v0

    iget v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000007;->val$Channel:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
