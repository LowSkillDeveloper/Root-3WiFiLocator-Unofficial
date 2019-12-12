.class public Landroid/support/v4/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field public static final HUNDRED_DAY_FIELD_LEN:I = 0x13

.field private static final SECONDS_PER_DAY:I = 0x15180

.field private static final SECONDS_PER_HOUR:I = 0xe10

.field private static final SECONDS_PER_MINUTE:I = 0x3c

.field private static sFormatStr:[C

.field private static final sFormatSync:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    .line 36
    const/16 v0, 0x18

    new-array v0, v0, [C

    sput-object v0, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static accumField(IIZI)I
    .locals 6

    .prologue
    .line 39
    move v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, v0

    const/16 v5, 0x63

    if-gt v4, v5, :cond_0

    move v4, v2

    if-eqz v4, :cond_1

    move v4, v3

    const/4 v5, 0x3

    if-lt v4, v5, :cond_1

    .line 40
    :cond_0
    const/4 v4, 0x3

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    .line 48
    :goto_0
    return v0

    .line 42
    :cond_1
    move v4, v0

    const/16 v5, 0x9

    if-gt v4, v5, :cond_2

    move v4, v2

    if-eqz v4, :cond_3

    move v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_3

    .line 43
    :cond_2
    const/4 v4, 0x2

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 45
    :cond_3
    move v4, v2

    if-nez v4, :cond_4

    move v4, v0

    if-lez v4, :cond_5

    .line 46
    :cond_4
    const/4 v4, 0x1

    move v5, v1

    add-int/2addr v4, v5

    move v0, v4

    goto :goto_0

    .line 48
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method public static formatDuration(JJLjava/io/PrintWriter;)V
    .locals 9

    .prologue
    .line 169
    move-wide v0, p0

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 170
    move-object v5, v4

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 174
    :goto_0
    return-void

    .line 173
    :cond_0
    move-wide v5, v0

    move-wide v7, v2

    sub-long/2addr v5, v7

    move-object v7, v4

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 174
    goto :goto_0
.end method

.method public static formatDuration(JLjava/io/PrintWriter;)V
    .locals 7

    .prologue
    .line 164
    move-wide v0, p0

    move-object v2, p2

    move-wide v3, v0

    move-object v5, v2

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Landroid/support/v4/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;I)V

    .line 165
    return-void
.end method

.method public static formatDuration(JLjava/io/PrintWriter;I)V
    .locals 14

    .prologue
    .line 156
    move-wide v0, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    sget-object v7, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    move-object v13, v7

    move-object v7, v13

    move-object v8, v13

    move-object v4, v8

    monitor-enter v7

    .line 157
    move-wide v7, v0

    move v9, v3

    :try_start_0
    invoke-static {v7, v8, v9}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v7

    move v5, v7

    .line 158
    move-object v7, v2

    new-instance v8, Ljava/lang/String;

    move-object v13, v8

    move-object v8, v13

    move-object v9, v13

    sget-object v10, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v11, 0x0

    move v12, v5

    invoke-direct {v9, v10, v11, v12}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 159
    move-object v7, v4

    monitor-exit v7

    .line 160
    return-void

    .line 159
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v4

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v6

    throw v7
.end method

.method public static formatDuration(JLjava/lang/StringBuilder;)V
    .locals 11

    .prologue
    .line 148
    move-wide v0, p0

    move-object v2, p2

    sget-object v6, Landroid/support/v4/util/TimeUtils;->sFormatSync:Ljava/lang/Object;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v3, v7

    monitor-enter v6

    .line 149
    move-wide v6, v0

    const/4 v8, 0x0

    :try_start_0
    invoke-static {v6, v7, v8}, Landroid/support/v4/util/TimeUtils;->formatDurationLocked(JI)I

    move-result v6

    move v4, v6

    .line 150
    move-object v6, v2

    sget-object v7, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    const/4 v8, 0x0

    move v9, v4

    invoke-virtual {v6, v7, v8, v9}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 151
    move-object v6, v3

    monitor-exit v6

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v6

    move-object v5, v6

    move-object v6, v3

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    throw v6
.end method

.method private static formatDurationLocked(JI)I
    .locals 22

    .prologue
    .line 76
    move-wide/from16 v2, p0

    move/from16 v4, p2

    sget-object v15, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    array-length v15, v15

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 77
    move v15, v4

    new-array v15, v15, [C

    sput-object v15, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    .line 80
    :cond_0
    sget-object v15, Landroid/support/v4/util/TimeUtils;->sFormatStr:[C

    move-object v5, v15

    .line 82
    move-wide v15, v2

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_2

    .line 83
    const/4 v15, 0x0

    move v6, v15

    .line 84
    add-int/lit8 v4, v4, -0x1

    .line 85
    :goto_0
    move v15, v6

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 86
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x20

    aput-char v17, v15, v16

    goto :goto_0

    .line 88
    :cond_1
    move-object v15, v5

    move/from16 v16, v6

    const/16 v17, 0x30

    aput-char v17, v15, v16

    .line 89
    move v15, v6

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v2, v15

    .line 143
    :goto_1
    return v2

    .line 93
    :cond_2
    move-wide v15, v2

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-lez v15, :cond_6

    .line 94
    const/16 v15, 0x2b

    move v6, v15

    .line 100
    :goto_2
    move-wide v15, v2

    const-wide/16 v17, 0x3e8

    rem-long v15, v15, v17

    long-to-int v15, v15

    move v7, v15

    .line 101
    move-wide v15, v2

    const-wide/16 v17, 0x3e8

    div-long v15, v15, v17

    long-to-double v15, v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->floor(D)D

    move-result-wide v15

    double-to-int v15, v15

    move v8, v15

    .line 102
    const/4 v15, 0x0

    move v9, v15

    const/4 v15, 0x0

    move v10, v15

    const/4 v15, 0x0

    move v11, v15

    .line 104
    move v15, v8

    const v16, 0x15180

    move/from16 v0, v16

    if-le v15, v0, :cond_3

    .line 105
    move v15, v8

    const v16, 0x15180

    div-int v15, v15, v16

    move v9, v15

    .line 106
    move v15, v8

    move/from16 v16, v9

    const v17, 0x15180

    mul-int v16, v16, v17

    sub-int v15, v15, v16

    move v8, v15

    .line 108
    :cond_3
    move v15, v8

    const/16 v16, 0xe10

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    .line 109
    move v15, v8

    const/16 v16, 0xe10

    div-int/lit16 v15, v15, 0xe10

    move v10, v15

    .line 110
    move v15, v8

    move/from16 v16, v10

    const/16 v17, 0xe10

    move/from16 v0, v16

    mul-int/lit16 v0, v0, 0xe10

    move/from16 v16, v0

    sub-int v15, v15, v16

    move v8, v15

    .line 112
    :cond_4
    move v15, v8

    const/16 v16, 0x3c

    move/from16 v0, v16

    if-le v15, v0, :cond_5

    .line 113
    move v15, v8

    const/16 v16, 0x3c

    div-int/lit8 v15, v15, 0x3c

    move v11, v15

    .line 114
    move v15, v8

    move/from16 v16, v11

    const/16 v17, 0x3c

    mul-int/lit8 v16, v16, 0x3c

    sub-int v15, v15, v16

    move v8, v15

    .line 117
    :cond_5
    const/4 v15, 0x0

    move v12, v15

    .line 119
    move v15, v4

    if-eqz v15, :cond_b

    .line 120
    move v15, v9

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v15 .. v18}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v15

    move v13, v15

    .line 121
    move v15, v13

    move/from16 v16, v10

    const/16 v17, 0x1

    move/from16 v18, v13

    if-lez v18, :cond_7

    const/16 v18, 0x1

    :goto_3
    const/16 v19, 0x2

    invoke-static/range {v16 .. v19}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    add-int v15, v15, v16

    move v13, v15

    .line 122
    move v15, v13

    move/from16 v16, v11

    const/16 v17, 0x1

    move/from16 v18, v13

    if-lez v18, :cond_8

    const/16 v18, 0x1

    :goto_4
    const/16 v19, 0x2

    invoke-static/range {v16 .. v19}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    add-int v15, v15, v16

    move v13, v15

    .line 123
    move v15, v13

    move/from16 v16, v8

    const/16 v17, 0x1

    move/from16 v18, v13

    if-lez v18, :cond_9

    const/16 v18, 0x1

    :goto_5
    const/16 v19, 0x2

    invoke-static/range {v16 .. v19}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    add-int v15, v15, v16

    move v13, v15

    .line 124
    move v15, v13

    move/from16 v16, v7

    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v19, v13

    if-lez v19, :cond_a

    const/16 v19, 0x3

    :goto_6
    invoke-static/range {v16 .. v19}, Landroid/support/v4/util/TimeUtils;->accumField(IIZI)I

    move-result v16

    const/16 v17, 0x1

    add-int/lit8 v16, v16, 0x1

    add-int v15, v15, v16

    move v13, v15

    .line 125
    :goto_7
    move v15, v13

    move/from16 v16, v4

    move/from16 v0, v16

    if-ge v15, v0, :cond_b

    .line 126
    move-object v15, v5

    move/from16 v16, v12

    const/16 v17, 0x20

    aput-char v17, v15, v16

    .line 127
    add-int/lit8 v12, v12, 0x1

    .line 128
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 96
    :cond_6
    const/16 v15, 0x2d

    move v6, v15

    .line 97
    move-wide v15, v2

    neg-long v15, v15

    move-wide v2, v15

    goto/16 :goto_2

    .line 121
    :cond_7
    const/16 v18, 0x0

    goto :goto_3

    .line 122
    :cond_8
    const/16 v18, 0x0

    goto :goto_4

    .line 123
    :cond_9
    const/16 v18, 0x0

    goto :goto_5

    .line 124
    :cond_a
    const/16 v19, 0x0

    goto :goto_6

    .line 132
    :cond_b
    move-object v15, v5

    move/from16 v16, v12

    move/from16 v17, v6

    aput-char v17, v15, v16

    .line 133
    add-int/lit8 v12, v12, 0x1

    .line 135
    move v15, v12

    move v13, v15

    .line 136
    move v15, v4

    if-eqz v15, :cond_c

    const/4 v15, 0x1

    :goto_8
    move v14, v15

    .line 137
    move-object v15, v5

    move/from16 v16, v9

    const/16 v17, 0x64

    move/from16 v18, v12

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v15 .. v20}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v15

    move v12, v15

    .line 138
    move-object v15, v5

    move/from16 v16, v10

    const/16 v17, 0x68

    move/from16 v18, v12

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_d

    const/16 v19, 0x1

    :goto_9
    move/from16 v20, v14

    if-eqz v20, :cond_e

    const/16 v20, 0x2

    :goto_a
    invoke-static/range {v15 .. v20}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v15

    move v12, v15

    .line 139
    move-object v15, v5

    move/from16 v16, v11

    const/16 v17, 0x6d

    move/from16 v18, v12

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_f

    const/16 v19, 0x1

    :goto_b
    move/from16 v20, v14

    if-eqz v20, :cond_10

    const/16 v20, 0x2

    :goto_c
    invoke-static/range {v15 .. v20}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v15

    move v12, v15

    .line 140
    move-object v15, v5

    move/from16 v16, v8

    const/16 v17, 0x73

    move/from16 v18, v12

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_11

    const/16 v19, 0x1

    :goto_d
    move/from16 v20, v14

    if-eqz v20, :cond_12

    const/16 v20, 0x2

    :goto_e
    invoke-static/range {v15 .. v20}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v15

    move v12, v15

    .line 141
    move-object v15, v5

    move/from16 v16, v7

    const/16 v17, 0x6d

    move/from16 v18, v12

    const/16 v19, 0x1

    move/from16 v20, v14

    if-eqz v20, :cond_13

    move/from16 v20, v12

    move/from16 v21, v13

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_13

    const/16 v20, 0x3

    :goto_f
    invoke-static/range {v15 .. v20}, Landroid/support/v4/util/TimeUtils;->printField([CICIZI)I

    move-result v15

    move v12, v15

    .line 142
    move-object v15, v5

    move/from16 v16, v12

    const/16 v17, 0x73

    aput-char v17, v15, v16

    .line 143
    move v15, v12

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    move v2, v15

    goto/16 :goto_1

    .line 136
    :cond_c
    const/4 v15, 0x0

    goto/16 :goto_8

    .line 138
    :cond_d
    const/16 v19, 0x0

    goto :goto_9

    :cond_e
    const/16 v20, 0x0

    goto :goto_a

    .line 139
    :cond_f
    const/16 v19, 0x0

    goto :goto_b

    :cond_10
    const/16 v20, 0x0

    goto :goto_c

    .line 140
    :cond_11
    const/16 v19, 0x0

    goto :goto_d

    :cond_12
    const/16 v20, 0x0

    goto :goto_e

    .line 141
    :cond_13
    const/16 v20, 0x0

    goto :goto_f
.end method

.method private static printField([CICIZI)I
    .locals 12

    .prologue
    .line 53
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move v8, v4

    if-nez v8, :cond_0

    move v8, v1

    if-lez v8, :cond_7

    .line 54
    :cond_0
    move v8, v3

    move v6, v8

    .line 55
    move v8, v4

    if-eqz v8, :cond_1

    move v8, v5

    const/4 v9, 0x3

    if-ge v8, v9, :cond_2

    :cond_1
    move v8, v1

    const/16 v9, 0x63

    if-le v8, v9, :cond_3

    .line 56
    :cond_2
    move v8, v1

    const/16 v9, 0x64

    div-int/lit8 v8, v8, 0x64

    move v7, v8

    .line 57
    move-object v8, v0

    move v9, v3

    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    move v8, v1

    move v9, v7

    const/16 v10, 0x64

    mul-int/lit8 v9, v9, 0x64

    sub-int/2addr v8, v9

    move v1, v8

    .line 61
    :cond_3
    move v8, v4

    if-eqz v8, :cond_4

    move v8, v5

    const/4 v9, 0x2

    if-ge v8, v9, :cond_5

    :cond_4
    move v8, v1

    const/16 v9, 0x9

    if-gt v8, v9, :cond_5

    move v8, v6

    move v9, v3

    if-eq v8, v9, :cond_6

    .line 62
    :cond_5
    move v8, v1

    const/16 v9, 0xa

    div-int/lit8 v8, v8, 0xa

    move v7, v8

    .line 63
    move-object v8, v0

    move v9, v3

    move v10, v7

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 64
    add-int/lit8 v3, v3, 0x1

    .line 65
    move v8, v1

    move v9, v7

    const/16 v10, 0xa

    mul-int/lit8 v9, v9, 0xa

    sub-int/2addr v8, v9

    move v1, v8

    .line 67
    :cond_6
    move-object v8, v0

    move v9, v3

    move v10, v1

    const/16 v11, 0x30

    add-int/lit8 v10, v10, 0x30

    int-to-char v10, v10

    aput-char v10, v8, v9

    .line 68
    add-int/lit8 v3, v3, 0x1

    .line 69
    move-object v8, v0

    move v9, v3

    move v10, v2

    aput-char v10, v8, v9

    .line 70
    add-int/lit8 v3, v3, 0x1

    .line 72
    :cond_7
    move v8, v3

    move v0, v8

    return v0
.end method
