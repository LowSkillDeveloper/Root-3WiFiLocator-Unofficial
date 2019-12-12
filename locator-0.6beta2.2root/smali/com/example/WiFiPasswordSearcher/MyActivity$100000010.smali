.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;
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
    name = "100000010"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;)Lcom/example/WiFiPasswordSearcher/MyActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

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
    .line 683
    move-object v0, p0

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000010;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity;

    invoke-virtual {v4}, Lcom/example/WiFiPasswordSearcher/MyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "Please enter credentials"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    move-object v2, v4

    .line 684
    move-object v4, v2

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
