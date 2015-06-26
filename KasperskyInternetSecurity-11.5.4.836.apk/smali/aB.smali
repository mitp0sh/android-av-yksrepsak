.class public final LaB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    packed-switch p0, :pswitch_data_0

    .line 29
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    const-string v0, "NOT_DEFINED"

    goto :goto_0

    .line 21
    :pswitch_1
    const-string v0, "ACTIVE"

    goto :goto_0

    .line 23
    :pswitch_2
    const-string v0, "PAUSED"

    goto :goto_0

    .line 25
    :pswitch_3
    const-string v0, "SOFT_CANCELLED"

    goto :goto_0

    .line 27
    :pswitch_4
    const-string v0, "HARD_CANCELLED"

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
