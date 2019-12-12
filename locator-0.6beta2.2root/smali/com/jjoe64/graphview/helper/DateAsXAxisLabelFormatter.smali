.class public Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;
.super Lcom/jjoe64/graphview/DefaultLabelFormatter;
.source "DateAsXAxisLabelFormatter.java"


# instance fields
.field protected final mCalendar:Ljava/util/Calendar;

.field protected final mDateFormat:Ljava/text/DateFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Lcom/jjoe64/graphview/DefaultLabelFormatter;-><init>()V

    .line 61
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mDateFormat:Ljava/text/DateFormat;

    .line 62
    move-object v2, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, v2, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mCalendar:Ljava/util/Calendar;

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/text/DateFormat;)V
    .locals 5

    .prologue
    .line 72
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Lcom/jjoe64/graphview/DefaultLabelFormatter;-><init>()V

    .line 73
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mDateFormat:Ljava/text/DateFormat;

    .line 74
    move-object v3, v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    iput-object v4, v3, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mCalendar:Ljava/util/Calendar;

    .line 75
    return-void
.end method


# virtual methods
.method public formatLabel(DZ)Ljava/lang/String;
    .locals 8

    .prologue
    .line 86
    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, v3

    if-eqz v4, :cond_0

    .line 88
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mCalendar:Ljava/util/Calendar;

    move-wide v5, v1

    double-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 89
    move-object v4, v0

    iget-object v4, v4, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mDateFormat:Ljava/text/DateFormat;

    move-object v5, v0

    iget-object v5, v5, Lcom/jjoe64/graphview/helper/DateAsXAxisLabelFormatter;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    .line 91
    :goto_0
    return-object v0

    :cond_0
    move-object v4, v0

    move-wide v5, v1

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Lcom/jjoe64/graphview/DefaultLabelFormatter;->formatLabel(DZ)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0
.end method
