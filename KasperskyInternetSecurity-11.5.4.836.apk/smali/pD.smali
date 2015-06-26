.class final LpD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:LpB;


# direct methods
.method private constructor <init>(LpB;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, LpD;->a:LpB;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LpB;B)V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0, p1}, LpD;-><init>(LpB;)V

    return-void
.end method

.method private a(LjF;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 324
    invoke-static {}, LjJ;->g()Lde;

    move-result-object v2

    .line 326
    sget-object v3, LpC;->e:[I

    invoke-virtual {p1}, LjF;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/AndroidEventType;

    invoke-virtual {v0}, Lcom/kms/AndroidEventType;->ordinal()I

    move-result v0

    aget v0, v3, v0

    packed-switch v0, :pswitch_data_0

    .line 338
    :goto_0
    return-void

    .line 328
    :pswitch_0
    iget-object v0, p0, LpD;->a:LpB;

    sget-object v2, Lpl;->a:Ljava/lang/String;

    invoke-static {v0, v2, v1}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 331
    :pswitch_1
    iget-object v3, p0, LpD;->a:LpB;

    sget-object v4, Lpl;->a:Ljava/lang/String;

    invoke-interface {v2}, Lde;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lpl;->a()Lpl;

    move-result-object v0

    :goto_1
    invoke-static {v3, v4, v0}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_1

    .line 335
    :pswitch_2
    iget-object v0, p0, LpD;->a:LpB;

    sget-object v1, Lpo;->a:Ljava/lang/String;

    invoke-static {}, Lpo;->a()Lpo;

    move-result-object v2

    invoke-static {v0, v1, v2}, LpB;->a(LpB;Ljava/lang/String;Lps;)V

    goto :goto_0

    .line 326
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 321
    check-cast p1, LjF;

    invoke-direct {p0, p1}, LpD;->a(LjF;)V

    return-void
.end method
