.class Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;
.super Ljava/lang/Object;
.source "ServerSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;)Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;

    invoke-virtual {v3}, Lcom/example/WiFiPasswordSearcher/ServerSettingsActivity;->finish()V

    return-void
.end method
