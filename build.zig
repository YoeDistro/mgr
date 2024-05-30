const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const exe = b.addExecutable(.{
        .name = "mgr",
        .target = target,
    });

    exe.addCSourceFile(.{
        .file = b.path("main.c"),
        .flags = &[_][]const u8{},
    });

    exe.linkLibC();
    b.installArtifact(exe);
}
