.class Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;
.super Ljava/lang/Object;
.source "MyActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;

.field private final val$rowId:I


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;->val$rowId:I

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;)Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;

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

    .prologue
    .line 251
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    iget-object v4, v4, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;->this$0:Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;

    invoke-static {v4}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;->access$0(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001;)Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter$100000001$100000000;->val$rowId:I

    move v6, v2

    invoke-static {v4, v5, v6}, Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;->access$1000008(Lcom/example/WiFiPasswordSearcher/WiFiListSimpleAdapter;II)V

    return-void
.end method
