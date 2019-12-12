.class Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;
.super Ljava/lang/Object;
.source "WifiDetails.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/example/WiFiPasswordSearcher/WifiDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000006"
.end annotation


# instance fields
.field private final this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

.field private final val$fSignal:I


# direct methods
.method constructor <init>(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v4, v0

    move v5, v2

    iput v5, v4, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->val$fSignal:I

    return-void
.end method

.method static access$0(Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;)Lcom/example/WiFiPasswordSearcher/WifiDetails;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 310
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000021(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Lcom/jjoe64/graphview/series/LineGraphSeries;

    move-result-object v2

    new-instance v3, Lcom/jjoe64/graphview/series/DataPoint;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    move-object v5, v0

    iget-object v5, v5, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v5}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000023(Lcom/example/WiFiPasswordSearcher/WifiDetails;)I

    move-result v5

    int-to-double v5, v5

    move-object v7, v0

    iget v7, v7, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->val$fSignal:I

    int-to-double v7, v7

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/jjoe64/graphview/series/DataPoint;-><init>(DD)V

    const/4 v4, 0x1

    const/16 v5, 0x19

    invoke-virtual {v2, v3, v4, v5}, Lcom/jjoe64/graphview/series/LineGraphSeries;->appendData(Lcom/jjoe64/graphview/series/DataPointInterface;ZI)V

    .line 311
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    move-object v9, v2

    move-object v2, v9

    move-object v3, v9

    invoke-static {v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000023(Lcom/example/WiFiPasswordSearcher/WifiDetails;)I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$S1000023(Lcom/example/WiFiPasswordSearcher/WifiDetails;I)V

    .line 312
    move-object v2, v0

    iget-object v2, v2, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->this$0:Lcom/example/WiFiPasswordSearcher/WifiDetails;

    invoke-static {v2}, Lcom/example/WiFiPasswordSearcher/WifiDetails;->access$L1000011(Lcom/example/WiFiPasswordSearcher/WifiDetails;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuffer;

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v4, Ljava/lang/StringBuffer;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "Signal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Lcom/example/WiFiPasswordSearcher/WifiDetails$100000006;->val$fSignal:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
