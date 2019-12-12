.class Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;
.super Ljava/lang/Object;
.source "WifiDetails.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WifiDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001$100000000;
    }
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

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;)Lcom/example/WiFiPasswordSearcher/WifiDetails;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CompoundButton;",
            "Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 96
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move v5, v2

    invoke-static {v4, v5}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$S1000015(Lcom/example/WiFiPasswordSearcher/WifiDetails;Z)V

    .line 98
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000020(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Lcom/example/WiFiPasswordSearcher/Settings;

    move-result-object v4

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    const-string v5, "WIFI_SIGNAL"

    move-object v6, v0

    iget-object v6, v6, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v6}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000015(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Z

    move-result v6

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 99
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000020(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Lcom/example/WiFiPasswordSearcher/Settings;

    move-result-object v4

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/Settings;->Editor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v4

    .line 101
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000015(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 102
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    new-instance v5, Ljava/lang/Thread;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    new-instance v7, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001$100000000;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001$100000000;-><init>(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;)V

    invoke-direct {v6, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v4, v5}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$S1000003(Lcom/example/WiFiPasswordSearcher/WifiDetails;Ljava/lang/Thread;)V

    .line 108
    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000001;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000003(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
