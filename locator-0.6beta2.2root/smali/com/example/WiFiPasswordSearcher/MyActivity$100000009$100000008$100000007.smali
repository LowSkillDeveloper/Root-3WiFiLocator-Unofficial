.class Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000007"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;

.field private final val$BSSDWps:Ljava/lang/String;

.field private final val$ESSDWps:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;

    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->val$ESSDWps:Ljava/lang/String;

    move-object v5, v0

    move-object v6, v3

    iput-object v6, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->val$BSSDWps:Ljava/lang/String;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;)Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 567
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 575
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 570
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->this$0:Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;->access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008;)Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;

    move-result-object v4

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;->access$0(Lcom/example/WiFiPasswordSearcher/MyActivity$100000009;)Lcom/example/WiFiPasswordSearcher/MyActivity;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->val$ESSDWps:Ljava/lang/String;

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/MyActivity$100000009$100000008$100000007;->val$BSSDWps:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/example/WiFiPasswordSearcher/MyActivity;->access$1000035(Lcom/example/WiFiPasswordSearcher/MyActivity;Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    goto :goto_0

    .line 573
    :pswitch_1
    goto :goto_0

    .line 567
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
