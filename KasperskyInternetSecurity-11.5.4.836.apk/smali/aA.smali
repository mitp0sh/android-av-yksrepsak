.class public final LaA;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 50
    const-string v0, "UNIKNOWN"

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "NOT_DEFINED"

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "UNLIMITED"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "LIMITED"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "PAUSED"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
