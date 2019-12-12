.class Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;
.super Ljava/lang/Object;
.source "AppVersion.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/AppVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/AppVersion;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/AppVersion;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/AppVersion;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;)Lcom/example/WiFiPasswordSearcher/AppVersion;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/DialogInterface;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    new-instance v6, Landroid/content/Intent;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    const-string v8, "android.intent.action.VIEW"

    new-instance v9, Ljava/lang/StringBuffer;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move-object v10, v0

    iget-object v10, v10, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/AppVersion;

    invoke-static {v10}, Lcom/example/WiFiPasswordSearcher/AppVersion;->access$L1000000(Lcom/example/WiFiPasswordSearcher/AppVersion;)Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f050002

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "/api/app.latest.apk"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    move-object v4, v6

    .line 58
    move-object v6, v4

    const/high16 v7, 0x10000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 59
    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/AppVersion$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/AppVersion;

    invoke-static {v6}, Lcom/example/WiFiPasswordSearcher/AppVersion;->access$L1000000(Lcom/example/WiFiPasswordSearcher/AppVersion;)Landroid/content/Context;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
