.class public final enum Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
.super Ljava/lang/Enum;
.source "GridLabelRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jjoe64/graphview/GridLabelRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GridStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

.field public static final enum VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 141
    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "BOTH"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "VERTICAL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "HORIZONTAL"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    new-instance v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "NONE"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    .line 140
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x3

    sget-object v3, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    aput-object v3, v1, v2

    sput-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->$VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
    .locals 3

    .prologue
    .line 140
    move-object v0, p0

    const-class v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    move-object v0, v1

    return-object v0
.end method

.method public static values()[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;
    .locals 1

    .prologue
    .line 140
    sget-object v0, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->$VALUES:[Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    invoke-virtual {v0}, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    return-object v0
.end method


# virtual methods
.method public drawHorizontal()Z
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->HORIZONTAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public drawVertical()Z
    .locals 3

    .prologue
    .line 143
    move-object v0, p0

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->BOTH:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq v1, v2, :cond_0

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->VERTICAL:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-ne v1, v2, :cond_1

    move-object v1, v0

    sget-object v2, Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;->NONE:Lcom/jjoe64/graphview/GridLabelRenderer$GridStyle;

    if-eq v1, v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
