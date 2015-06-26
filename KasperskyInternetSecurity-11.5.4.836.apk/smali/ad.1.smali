.class final Lad;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU;


# instance fields
.field private synthetic a:Lab;


# direct methods
.method private constructor <init>(Lab;)V
    .locals 0

    .prologue
    .line 172
    iput-object p1, p0, Lad;->a:Lab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lab;B)V
    .locals 0

    .prologue
    .line 172
    invoke-direct {p0, p1}, Lad;-><init>(Lab;)V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0, p1, p2}, Lab;->a(Lab;J)J

    .line 210
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0}, Lab;->f(Lab;)Lv;

    move-result-object v0

    iget-object v1, p0, Lad;->a:Lab;

    invoke-static {v1}, Lab;->e(Lab;)I

    move-result v1

    invoke-interface {v0, v1}, Lv;->b(I)V

    .line 211
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0}, Lab;->f(Lab;)Lv;

    move-result-object v0

    iget-object v1, p0, Lad;->a:Lab;

    invoke-static {v1}, Lab;->e(Lab;)I

    move-result v1

    invoke-interface {v0, v1}, Lv;->a(I)V

    .line 212
    return-void
.end method

.method public final a(JJLcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Z)V
    .locals 9

    .prologue
    .line 176
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0}, Lab;->d(Lab;)LV;

    move-result-object v0

    iget-object v1, p0, Lad;->a:Lab;

    invoke-static {v1}, Lab;->c(Lab;)Lae;

    move-result-object v1

    invoke-virtual {v1}, Lae;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lad;->a:Lab;

    invoke-static {v2}, Lab;->c(Lab;)Lae;

    move-result-object v2

    invoke-virtual {v2}, Lae;->g()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lad;->a:Lab;

    invoke-static {v3}, Lab;->c(Lab;)Lae;

    move-result-object v3

    invoke-virtual {v3}, Lae;->h()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v1, p6, v2, v3}, LV;->a(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)LY;

    move-result-object v0

    .line 181
    invoke-interface {v0}, LY;->c()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-interface {v0}, LY;->a()Ljava/lang/String;

    move-result-object v2

    .line 183
    invoke-interface {v0}, LY;->b()Ljava/lang/String;

    move-result-object v3

    .line 184
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0}, Lab;->b(Lab;)Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v0

    sget-object v5, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    const/4 v6, 0x1

    move-object v1, p5

    invoke-interface/range {v0 .. v6}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J

    move-result-wide v1

    .line 200
    iget-object v0, p0, Lad;->a:Lab;

    invoke-static {v0}, Lab;->a(Lab;)Lai;

    move-result-object v0

    const/4 v3, 0x0

    iget-object v4, p0, Lad;->a:Lab;

    invoke-static {v4}, Lab;->c(Lab;)Lae;

    move-result-object v4

    invoke-virtual {v4}, Lae;->c()Ljava/lang/String;

    move-result-object v8

    move-wide v4, p1

    move-wide v6, p3

    invoke-interface/range {v0 .. v8}, Lai;->a(JIJJLjava/lang/String;)V

    goto :goto_0
.end method

.method public final a(LY;IJJLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 219
    iget-object v2, p0, Lad;->a:Lab;

    invoke-static {v2}, Lab;->d(Lab;)LV;

    move-result-object v2

    invoke-interface {p1}, LY;->c()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p7

    move-object/from16 v1, p8

    invoke-interface {v2, v3, v0, v1}, LV;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 221
    iget-object v2, p0, Lad;->a:Lab;

    invoke-static {v2}, Lab;->b(Lab;)Lcom/kaspersky/components/ipm/IpmMessageManager;

    move-result-object v2

    invoke-interface {p1}, LY;->d()Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;

    move-result-object v3

    invoke-interface {p1}, LY;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, LY;->b()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;->ContentString:Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;

    const/4 v8, 0x1

    invoke-interface/range {v2 .. v8}, Lcom/kaspersky/components/ipm/IpmMessageManager;->a(Lcom/kaspersky/components/ipm/IpmMessageSeverityEnum;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/kaspersky/components/ipm/IpmMessageManager$MessageContentEnum;Z)J

    move-result-wide v3

    .line 228
    iget-object v2, p0, Lad;->a:Lab;

    invoke-static {v2}, Lab;->a(Lab;)Lai;

    move-result-object v2

    iget-object v5, p0, Lad;->a:Lab;

    invoke-static {v5}, Lab;->c(Lab;)Lae;

    move-result-object v5

    invoke-virtual {v5}, Lae;->c()Ljava/lang/String;

    move-result-object v10

    move v5, p2

    move-wide v6, p3

    move-wide/from16 v8, p5

    invoke-interface/range {v2 .. v10}, Lai;->a(JIJJLjava/lang/String;)V

    .line 230
    return-void
.end method
