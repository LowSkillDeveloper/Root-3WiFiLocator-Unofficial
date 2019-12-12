.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000010$100000009;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000009"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000010$100000009;)Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
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
    .line 292
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v2

    packed-switch v4, :pswitch_data_0

    .line 300
    :goto_0
    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    return-void

    .line 295
    :pswitch_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010$100000009;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;->access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000010;)Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-result-object v4

    const/4 v5, 0x0

    check-cast v5, Landroid/view/View;

    invoke-virtual {v4, v5}, Lcom/example/WiFiPasswordSearcher/StartActivity;->btnOffline(Landroid/view/View;)V

    .line 296
    goto :goto_0

    .line 298
    :pswitch_1
    goto :goto_0

    .line 292
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
