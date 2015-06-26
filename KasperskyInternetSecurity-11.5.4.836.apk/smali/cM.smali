.class public final LcM;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/util/ArrayList;

.field private c:Ljava/util/ArrayList;

.field private d:Laa;

.field private e:LY;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, LcM;->a:Landroid/content/Context;

    .line 36
    return-void
.end method

.method static synthetic a(LcM;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(LcM;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 17
    const v2, 0x7f070699

    move-object v0, p0

    move-object v1, p1

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, LcM;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 187
    iget-object v1, p0, LcM;->a:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, LcM;->a:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p4, v2, v3

    const/4 v3, 0x1

    aput-object p5, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)LY;
    .locals 6

    .prologue
    .line 44
    new-instance v0, LcN;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, LcN;-><init>(LcM;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final a()Ljava/lang/Iterable;
    .locals 13

    .prologue
    const/4 v6, -0x1

    const/4 v8, 0x0

    .line 114
    iget-object v0, p0, LcM;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 115
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LcM;->b:Ljava/util/ArrayList;

    .line 116
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 119
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070692

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 120
    iget-object v7, p0, LcM;->b:Ljava/util/ArrayList;

    new-instance v0, Laa;

    const/16 v1, 0x1e

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    const/4 v0, 0x4

    new-array v9, v0, [I

    fill-array-data v9, :array_0

    .line 124
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070693

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 125
    array-length v11, v9

    move v7, v8

    :goto_0
    if-ge v7, v11, :cond_0

    aget v1, v9, v7

    .line 126
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    invoke-static {v10, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    iget-object v12, p0, LcM;->b:Ljava/util/ArrayList;

    new-instance v0, Laa;

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070694

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 132
    iget-object v7, p0, LcM;->b:Ljava/util/ArrayList;

    new-instance v0, Laa;

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    move v1, v8

    move v6, v8

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 136
    :cond_1
    iget-object v0, p0, LcM;->b:Ljava/util/ArrayList;

    return-object v0

    .line 123
    :array_0
    .array-data 4
        0xf
        0x7
        0x2
        0x1
    .end array-data
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 156
    const v2, 0x7f070699

    const v3, 0x7f070698

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, LcM;->a(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljava/lang/Iterable;
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 141
    iget-object v0, p0, LcM;->c:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LcM;->c:Ljava/util/ArrayList;

    .line 143
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 145
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070695

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 146
    new-instance v0, Laa;

    const/4 v1, 0x1

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    .line 148
    new-instance v1, LZ;

    const/16 v2, -0x1e

    invoke-direct {v1, v6, v2, v0}, LZ;-><init>(IILaa;)V

    .line 149
    iget-object v0, p0, LcM;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    :cond_0
    iget-object v0, p0, LcM;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method public final c()LY;
    .locals 7

    .prologue
    .line 174
    iget-object v0, p0, LcM;->e:LY;

    if-nez v0, :cond_0

    .line 175
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 178
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070697

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 179
    new-instance v0, Laa;

    const/4 v1, 0x0

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityMedium:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    iput-object v0, p0, LcM;->e:LY;

    .line 182
    :cond_0
    iget-object v0, p0, LcM;->e:LY;

    return-object v0
.end method

.method public final d()LY;
    .locals 7

    .prologue
    .line 161
    iget-object v0, p0, LcM;->d:Laa;

    if-nez v0, :cond_0

    .line 162
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 163
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f07069a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 165
    iget-object v0, p0, LcM;->a:Landroid/content/Context;

    const v1, 0x7f070696

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 166
    new-instance v0, Laa;

    const/4 v1, 0x0

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;->SeverityHigh:Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Laa;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;I)V

    iput-object v0, p0, LcM;->d:Laa;

    .line 169
    :cond_0
    iget-object v0, p0, LcM;->d:Laa;

    return-object v0
.end method

.method public final e()Z
    .locals 1

    .prologue
    .line 195
    invoke-static {}, Lsr;->g()Lsk;

    move-result-object v0

    invoke-virtual {v0}, Lsk;->t()Z

    move-result v0

    return v0
.end method
