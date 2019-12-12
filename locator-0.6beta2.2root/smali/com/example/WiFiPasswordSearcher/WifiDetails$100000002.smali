.class Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;
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
    name = "100000002"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;)Lcom/example/WiFiPasswordSearcher/WifiDetails;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000002;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$1000029(Lcom/example/WiFiPasswordSearcher/WifiDetails;)V

    return-void
.end method
