.class Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;
.super Landroid/webkit/WebViewClient;
.source "WPSActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WPSActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WPSActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/webkit/WebViewClient;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;)Lcom/example/WiFiPasswordSearcher/WPSActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 298
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    invoke-super {v6, v7, v8}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 299
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "variable1"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 300
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WPSActivity$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WPSActivity;

    invoke-static {v6}, Lcom/example/WiFiPasswordSearcher/WPSActivity;->access$L1000000(Lcom/example/WiFiPasswordSearcher/WPSActivity;)Landroid/webkit/WebView;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v8, Ljava/lang/StringBuffer;

    move-object v10, v8

    move-object v8, v10

    move-object v9, v10

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "javascript:initAlgos();window.JavaHandler.initAlgos(JSON.stringify(algos),\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, "\');"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method
