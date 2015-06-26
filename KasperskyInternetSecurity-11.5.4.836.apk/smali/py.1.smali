.class final Lpy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .locals 0

    .prologue
    .line 185
    invoke-direct {p0}, Lpy;-><init>()V

    return-void
.end method

.method private static a(Lps;Lps;Lcom/kms/issues/IssueType;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 204
    sget-object v1, Lpx;->b:[I

    invoke-virtual {p2}, Lcom/kms/issues/IssueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 221
    invoke-static {}, Lpw;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Issue type is not supported: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/kms/kmsshared/KMSLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_0
    :goto_0
    return v0

    .line 206
    :pswitch_0
    invoke-static {p0}, Lpw;->a(Lps;)I

    move-result v1

    .line 207
    invoke-static {p1}, Lpw;->a(Lps;)I

    move-result v2

    .line 208
    if-ge v1, v2, :cond_1

    .line 209
    const/4 v0, -0x1

    goto :goto_0

    .line 210
    :cond_1
    if-le v1, v2, :cond_0

    .line 211
    const/4 v0, 0x1

    goto :goto_0

    .line 218
    :pswitch_1
    invoke-interface {p0}, Lps;->k()Ljava/util/Date;

    move-result-object v0

    invoke-interface {p1}, Lps;->k()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    goto :goto_0

    .line 204
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private a(Lpv;Lpv;)I
    .locals 3

    .prologue
    .line 188
    invoke-interface {p1}, Lpv;->i()Lps;

    move-result-object v0

    .line 189
    invoke-interface {p2}, Lpv;->i()Lps;

    move-result-object v1

    .line 191
    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v2

    .line 192
    invoke-interface {v1}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kms/issues/IssueType;->getSeverity()I

    move-result v1

    .line 193
    if-ge v2, v1, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 198
    :goto_0
    return v0

    .line 195
    :cond_0
    if-le v2, v1, :cond_1

    .line 196
    const/4 v0, -0x1

    goto :goto_0

    .line 198
    :cond_1
    invoke-interface {p1}, Lpv;->i()Lps;

    move-result-object v1

    invoke-interface {p2}, Lpv;->i()Lps;

    move-result-object v2

    invoke-interface {v0}, Lps;->i()Lcom/kms/issues/IssueType;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lpy;->a(Lps;Lps;Lcom/kms/issues/IssueType;)I

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 185
    check-cast p1, Lpv;

    check-cast p2, Lpv;

    invoke-direct {p0, p1, p2}, Lpy;->a(Lpv;Lpv;)I

    move-result v0

    return v0
.end method
