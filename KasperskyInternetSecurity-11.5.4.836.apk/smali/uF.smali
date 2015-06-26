.class final LuF;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrz;


# instance fields
.field private synthetic a:Luz;


# direct methods
.method private constructor <init>(Luz;)V
    .locals 0

    .prologue
    .line 780
    iput-object p1, p0, LuF;->a:Luz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Luz;B)V
    .locals 0

    .prologue
    .line 780
    invoke-direct {p0, p1}, LuF;-><init>(Luz;)V

    return-void
.end method

.method private a(LsZ;)V
    .locals 2

    .prologue
    .line 783
    sget-object v1, LuC;->f:[I

    invoke-virtual {p1}, LsZ;->n()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kms/licensing/LicenseEventType;

    invoke-virtual {v0}, Lcom/kms/licensing/LicenseEventType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 788
    :goto_0
    return-void

    .line 785
    :pswitch_0
    iget-object v0, p0, LuF;->a:Luz;

    invoke-static {v0}, Luz;->c(Luz;)V

    goto :goto_0

    .line 783
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Lrw;)V
    .locals 0

    .prologue
    .line 780
    check-cast p1, LsZ;

    invoke-direct {p0, p1}, LuF;->a(LsZ;)V

    return-void
.end method
