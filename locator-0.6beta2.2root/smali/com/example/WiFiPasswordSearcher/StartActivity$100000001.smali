.class Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/StartActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/StartActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;)Lcom/example/WiFiPasswordSearcher/StartActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 77
    move-object v0, p0

    new-instance v5, Lcom/example/WiFiPasswordSearcher/AppVersion;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    invoke-virtual {v7}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;-><init>(Landroid/content/Context;)V

    move-object v2, v5

    .line 78
    move-object v5, v2

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    invoke-virtual {v6}, Lcom/example/WiFiPasswordSearcher/StartActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/Boolean;

    move v10, v7

    move-object v11, v8

    move-object v7, v11

    move v8, v10

    move-object v9, v11

    move v10, v8

    move-object v11, v9

    move-object v8, v11

    move v9, v10

    invoke-direct {v8, v9}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v5, v6, v7}, Lcom/example/WiFiPasswordSearcher/AppVersion;->isActualyVersion(Landroid/content/Context;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v5

    move-object v3, v5

    .line 79
    move-object v5, v3

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    .line 81
    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/StartActivity;

    new-instance v6, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Lcom/example/WiFiPasswordSearcher/StartActivity$100000001$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/StartActivity$100000001;Lcom/example/WiFiPasswordSearcher/AppVersion;)V

    invoke-virtual {v5, v6}, Lcom/example/WiFiPasswordSearcher/StartActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 89
    :cond_0
    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Boolean;

    move v10, v5

    move-object v11, v6

    move-object v5, v11

    move v6, v10

    move-object v7, v11

    move v10, v6

    move-object v11, v7

    move-object v6, v11

    move v7, v10

    invoke-direct {v6, v7}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/StartActivity;->access$S1000001(Ljava/lang/Boolean;)V

    return-void
.end method
