.class final Lcom/jjoe64/graphview/LegendRenderer$Styles;
.super Ljava/lang/Object;
.source "LegendRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/LegendRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Styles"
.end annotation


# instance fields
.field align:Lcom/jjoe64/graphview/LegendRenderer$LegendAlign;

.field backgroundColor:I

.field fixedPosition:Landroid/graphics/Point;

.field margin:I

.field padding:I

.field spacing:I

.field textColor:I

.field textSize:F

.field final synthetic this$0:Lcom/jjoe64/graphview/LegendRenderer;

.field width:I


# direct methods
.method private constructor <init>(Lcom/jjoe64/graphview/LegendRenderer;)V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/jjoe64/graphview/LegendRenderer$Styles;->this$0:Lcom/jjoe64/graphview/LegendRenderer;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jjoe64/graphview/LegendRenderer;Lcom/jjoe64/graphview/LegendRenderer$1;)V
    .locals 5

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/jjoe64/graphview/LegendRenderer$Styles;-><init>(Lcom/jjoe64/graphview/LegendRenderer;)V

    return-void
.end method
