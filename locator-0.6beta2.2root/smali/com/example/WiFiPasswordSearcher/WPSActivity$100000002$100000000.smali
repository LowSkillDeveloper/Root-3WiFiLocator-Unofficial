.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;
.super Ljava/lang/Object;
.source "WPSActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;)Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 10
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
    .line 132
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x15

    if-lt v4, v5, :cond_0

    .line 134
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v4

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000001(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000003(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/net/wifi/WifiManager$WpsCallback;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/wifi/WifiManager;->cancelWps(Landroid/net/wifi/WifiManager$WpsCallback;)V

    .line 136
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;->access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000002;)Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/Boolean;

    move v8, v5

    move-object v9, v6

    move-object v5, v9

    move v6, v8

    move-object v7, v9

    move v8, v6

    move-object v9, v7

    move-object v6, v9

    move v7, v8

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v4, v5}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$S1000004(Lcom/example/WiFiPasswordSearcher/WPSActivity;Ljava/lang/Boolean;)V

    .line 137
    move-object v4, v1

    invoke-interface {v4}, Landroid/content/DialogInterface;->dismiss()V

    .line 138
    sget-object v4, Lcom/example/WiFiPasswordSearcher/WPSActivity;->context:Landroid/content/Context;

    const-string v5, "Connection cancelled"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    return-void
.end method
